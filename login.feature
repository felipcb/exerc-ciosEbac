            #language: pt

            Funcionalidade: Tela de login
            Como usuário da EBAC-SHOP
            Quero me autenticar
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse o portal de identificação da EBAC

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve ser direcionado para tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "1234@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta: "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "abcd"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve ser direcionado para tela de checkout

            Exemplos:
            | usuario             | senha       | direcionar |
            | "joao@ebac.com.br"  | "senha@123" | sim        |
            | "maria@ebac.com.br" | "senha@123" | sim        |
            | "jose@ebac.com.br"  | "senha@123" | sim        |