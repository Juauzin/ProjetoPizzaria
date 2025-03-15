<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pizzaria Radiante</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header>
       
        </div>
    </header>
    <main>
        <aside class="filters">
            <h2>Filtros</h2>
            <ul>
                <li><a href="#">Todas</a></li>
                <li><a href="#">Frango</a></li>
                <li><a href="#">Calabresa</a></li>
                <li><a href="#">Vegetariana</a></li>
                <li><a href="#">Doces</a></li>
            </ul>
        </aside>
        <section id="cardapio">
            <h2>Nosso Cardápio</h2>
            <div class="pizza-grid">
                <?php
                $conexao = new mysqli("localhost", "root", "root", "pizzaria_radiante");
                if ($conexao->connect_error) {
                    die("Falha na conexão: " . $conexao->connect_error);
                }
                $resultado = $conexao->query("SELECT * FROM pizzas");
                while ($pizza = $resultado->fetch_assoc()) {
                    echo "<div class='pizza'>";
                    echo "<img src='img/pizza.png" . $pizza['imagem'] . "' alt='" . $pizza['nome'] . "'>";
                    echo "<h3>" . $pizza['nome'] . "</h3>";
                    echo "<p>" . $pizza['descricao'] . "</p>";
                    echo "<p class='preco'>R$ " . number_format($pizza['preco'], 2, ',', '.') . "</p>";
                    echo "<button class='adicionar' data-id='" . $pizza['id'] . "'>Adicionar ao Carrinho</button>";
                    echo "</div>";
                }
                $conexao->close();
                ?>
            </div>
        </section>
    </main>
    <section id="carrinho">
        <h2>Seu Carrinho</h2>
        <ul id="lista-carrinho"></ul>
        <p id="total">Total: R$ 0,00</p>
        <button id="finalizar">Finalizar Pedido</button>
    </section>
    <script src="js/script.js"></script>
</body>
</html>