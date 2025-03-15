<?php
header('Content-Type: application/json');

try {
    $dados = json_decode(file_get_contents('php://input'), true);

    if (!$dados) {
        throw new Exception("Dados de pedido inválidos: " . file_get_contents('php://input'));
    }

    $carrinho = $dados['carrinho'];
    $total = $dados['total'];

    $conexao = new mysqli("localhost", "root", "root", "pizzaria_radiante");

    if ($conexao->connect_error) {
        throw new Exception("Erro de conexão: " . $conexao->connect_error);
    }

    $conexao->begin_transaction();

    $stmtPedido = $conexao->prepare("INSERT INTO pedidos (total) VALUES (?)");
    if (!$stmtPedido) {
        throw new Exception("Erro ao preparar a declaração de pedido: " . $conexao->error);
    }

    $stmtPedido->bind_param("d", $total);
    if (!$stmtPedido->execute()) {
        throw new Exception("Erro ao executar a declaração de pedido: " . $stmtPedido->error);
    }

    $pedidoId = $conexao->insert_id;
    $stmtPedido->close();

    $stmtItemPedido = $conexao->prepare("INSERT INTO itens_pedido (pedido_id, pizza_id, quantidade) VALUES (?, ?, ?)");
    if (!$stmtItemPedido) {
        throw new Exception("Erro ao preparar a declaração de item de pedido: " . $conexao->error);
    }

    foreach ($carrinho as $item) {
        $quantidade = 1;
        $stmtItemPedido->bind_param("iii", $pedidoId, $item['id'], $quantidade);
        if (!$stmtItemPedido->execute()) {
            throw new Exception("Erro ao executar a declaração de item de pedido: " . $stmtItemPedido->error);
        }
    }
    $stmtItemPedido->close();

    $conexao->commit();
    echo json_encode(['sucesso' => true, 'pedido_id' => $pedidoId]);
} catch (Exception $e) {
    $conexao->rollback();
    error_log("Erro: " . $e->getMessage());
    echo json_encode(['sucesso' => false, 'erro' => $e->getMessage()]);
} finally {
    if (isset($conexao)) {
        $conexao->close();
    }
}
?>