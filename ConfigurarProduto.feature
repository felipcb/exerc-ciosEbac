            #language: pt

            Funcionalidade: Escolha do produto
            Como cliente da EBAC-SHOP
            Quero configurar o meu produto de acordo com meu tamanho e gosto
            Para adicionar o produto ao carrinho

            Contexto:
            Dado que eu acesse a página de produtos da EBAC

            Cenário: Selecionar produto
            Quando eu selecionar o produto, cor, tamanho e quantidade
            Então habilitar ícone "Inserir no carrinho"

            Cenário: Limpar
            Quando eu clicar no botão Limpar
            Então voltar o produto ao estado original

            Cenário: Quantidade máxima
            Quando a <quantidade> for maior que 10
            Então deve exibir <mensagem> de alerta: "Quantidade máxima de 10 produtos por venda."
