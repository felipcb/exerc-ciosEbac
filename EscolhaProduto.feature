            #language: pt

            Funcionalidade: Escolha de produto
            Como cliente da EBAC-SHOP
            Quero configurar o meu produto de acordo com meu tamanho e gosto
            Para adicionar o produto ao carrinho

            Contexto:
            Dado que eu acesse a página de produtos da EBAC

            Cenário: Selecionar produto
            Quando eu selecionar o produto
            Então exibir as opções de cor, tamanho e quantidade

            Cenário: Cor do produto
            Quando eu selecionar a cor
            Então exibir a imagem com a cor selecionada

            Cenário: Selecionar tamanho
            Quando eu selecionar o tamanho
            Então mostrar o tamanho selecionado

            Cenário: Selecionar quantidade
            Quando eu selecionar a quantidade
            Então mostrar a quantidade selecionada

            Cenário: Quantidade máxima
            Quando a quantidade for maior que 10
            Então mostrar mensagem de alerta: "Quantidade máxima de 10 produtos por venda."

            Cenário: Limpar
            Quando eu clicar no botão Limpar
            Então voltar o produto ao estado original

            Esquema do Cenário: Escolher múltiplos produtos
            Quando eu selecionar o <produto>
            E escolher <cor>, <tamanho> e <quantidade>
            Então o usuário deve confirmar envio para o carrinho

            | produto | cor    | tamanho | quantidade | carrinho |
            | blusa   | azul   | xs      | 3          | sim      |
            | calça   | rosa   | xl      | 10         | sim      |
            | meia    | branca | m       | 18         | não      |