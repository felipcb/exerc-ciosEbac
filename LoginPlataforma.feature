            #language: pt

            Funcionalidade: Escolha do produto
            Como cliente da EBAC-SHOP
            Quero fazer login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse o portal de identificação da EBAC

            Cenário: Autenticação válida
            Quando eu digitar "joao@ebac.com.br"
            E a senha "senha@123"
            Então exibir página: "Visualizar meus pedidos"

            Esquema do Cenário: Autenticação inválida
            Quando eu digitar <usuário>
            E <senha>
            Então deve emitir <mensagem>

            Exemplos:
            | usuário          | senha     | mensagem                      |
            | jjjj@ebac.com.br | senha@123 | "Usuário não existe."         |
            | joao@ebac.com.br | 123       | "Usuário ou senha inválidos." |
