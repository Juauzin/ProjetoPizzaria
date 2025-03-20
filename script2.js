// checkout.js

const listaCarrinhoCheckout = document.getElementById('lista-carrinho-checkout');
const totalCheckout = document.getElementById('total-checkout');

// Recuperar o carrinho do localStorage
const carrinhoString = localStorage.getItem('carrinho');
const carrinho = JSON.parse(carrinhoString) || [];

let total = 0;
carrinho.forEach(item => {
    const li = document.createElement('li');
    li.textContent = `${item.nome} - R$ ${item.preco.toFixed(2)}`;
    listaCarrinhoCheckout.appendChild(li);
    total += item.preco;
});

totalCheckout.textContent = `Total: R$ ${total.toFixed(2)}`;