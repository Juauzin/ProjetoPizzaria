<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/style2.css">
<head>
    <title>Checkout</title>
</head>
<body>
    <div class="container">
        <div class="dados-pessoais">
            <h2>Dados Pessoais</h2>
            <p>A sua loja virtual envia uma solicitação de transação para o Checkout Transparente</p>
            <input type="text" placeholder="Seu nome">
            <input type="tel" placeholder="+55 Seu Telefone">
            <button type="submit" id="finalizar">Finalizar Pedido</button>
        </div>
        <div class="resumo-pedido">
            <h2>Resumo do Pedido</h2>
            <ul id="lista-carrinho-checkout"></ul>
            <p id="total-checkout"></p>
         
         <div class="pagamento-opcao">
                <input type="radio" id="" name="pagamento" value="pix">
                <label for="Entrega">Entrega dentro de 45 minutos <hr>Acréscimo de R$8.00.</label>
            </div>
            <div class="pagamento-opcao">
                <input type="radio" id="" name="pagamento" value="Retirada">
                <label for="Retirada">Retirada dentro de 20 minutos</label>
            </div>
            </div>   
        <div class="pagamento">
            <h2>Pagamento</h2>
            <p>Escolha uma forma de pagamento</p>
            <div class="pagamento-opcao">
                <input type="radio" id="pix" name="pagamento" value="pix">
                <label for="pix">Pix</label>
            </div>
            <div class="pagamento-opcao">
                <input type="radio" id="cartao" name="pagamento" value="cartao">
                <label for="cartao">Cartão de Débito</label>
            </div>
            <div class="pagamento-opcao">
                <input type="radio" id="cartao" name="pagamento" value="cartao">
                <label for="cartao">Cartão de Crédito</label>
            </div>
        </div>
    </div>
    <!-- /*Script para transferiri o carrinho do index.php para o index2.php*/ -->
    <script src="js/script2.js"></script>
</body>
</html>