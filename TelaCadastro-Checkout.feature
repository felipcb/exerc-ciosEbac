            #language: pt

            Funcionalidade: Finalizar compra
            Como cliente da EBAC-SHOP
            Quero concluir o meu cadastro
            Para Finalizar minha compra

            Contexto
            Dado que eu acesse a tela de cadastro

            Cenário: Cadastro válido
            Quando eu preencher todos os campos obrigatórios
            Então habilitar ícone "Finalizar compra"

            Cenário: Campo obrigatório vazio
            Quando campo obrigatório estiver em branco
            Então deve exibir mensagem de alerta: "Favor preencher campos obrigatórios."

            Esquema do Cenário: E-mail com formato inválido
            Quando eu preencher <e-mail>
            Então deve emitir <mensagem>

            Exemplos:
            | e-mail           | mensagem           |
            | ebac.com.br      | "E-mail inválido." |
            | joao@            | "E-mail inválido." |
            | joao@ebac.com.br | "E-mail válido."   |
