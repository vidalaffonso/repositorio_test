#language:pt

Funcionalidade: Realizar uma compra
    Como um usuário de ecommerce
    Quero acessar a plataforma
    Para realizar uma compra

Contexto: Acessar ecommerce
    Dado que eu acesse a plataforma do ecommerce

Cenário: Pesquisar e comprar um produto
    Dado que eu pesquise o produto
    Quando eu clicar em adicionar ao carrinho
    Então deverá ser apresentado a pagina de para checkout

