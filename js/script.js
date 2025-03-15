const carrinho = [];
const listaCarrinho = document.getElementById('lista-carrinho');
const totalElement = document.getElementById('total');
const finalizarButton = document.getElementById('finalizar');

document.querySelectorAll('.adicionar').forEach(button => {
    button.addEventListener('click', () => {
        const pizzaId = parseInt(button.dataset.id);
        const pizzaNome = button.parentElement.querySelector('h3').textContent;
        const pizzaPreco = parseFloat(button.parentElement.querySelector('.preco').textContent.replace('R$ ', '').replace(',', '.'));
        carrinho.push({ id: pizzaId, nome: pizzaNome, preco: pizzaPreco });
        atualizarCarrinho();
    });
});

function atualizarCarrinho() {
    listaCarrinho.innerHTML = '';
    let total = 0;
    carrinho.forEach(item => {
        const li = document.createElement('li');
        li.textContent = `${item.nome} - R$ ${item.preco.toFixed(2)}`;
        listaCarrinho.appendChild(li);
        total += item.preco;
    });
    totalElement.textContent = `Total: R$ ${total.toFixed(2)}`;
}

finalizarButton.addEventListener('click', () => {
    const dadosPedido = {
        carrinho: carrinho,
        total: parseFloat(totalElement.textContent.replace('Total: R$ ', '').replace(',', '.'))
    };

    fetch('registrar_pedido.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(dadosPedido)
    })
    .then(response => response.json())
    .then(data => {
        if (data.sucesso) {
            alert('Pedido finalizado com sucesso! Número do pedido: ' + data.pedido_id);
            carrinho.length = 0;
            atualizarCarrinho();
        } else {
            alert('Erro ao finalizar o pedido.');
        }
    })
    .catch(error => {
        console.error('Erro:', error);
        alert('Erro ao finalizar o pedido.');
    });
});
