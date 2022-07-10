#language: pt

Funcionalidade: Finalizar compra
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para Finalizar minha compra

Contexto:
Dado que eu acesse a tela de cadastro

Cenário: Finalizar
Quando os campos estiverem sem asterisco
Então habilitar ícone: "FINALIZAR COMPRA"

Cenário: Cadastro com campo em branco
Quando eu clicar em cadastrar
E campo com asterisco
Então exibir mensagem de alerta: "Preencher campos obrigatórios."

Cenário: Cadastro de usuário
Quando eu preecher os campos obrigatórios: nome, sobrenome, país, endereço, cidade, cep e telefone
Então deve apagar asterisco

Cenário: e-mail válido
Quando eu preecher o campo obrigatório e-mail
E estiver no formato válido com nome, arroba e domínio
Então apagar asterisco do campo e-mail

Cenário: e-mail inválido
Quando eu preecher faltando nome, arroba ou domínio no e-mail 
Então asterisco permanece e exibir a mensagem de erro: "E-mail inválido."

Exemplos:
|nome|sobrenome|país|endereço|cidade|cep|telefone|e-mail|mensagem|
|Alberto|Junior|Brasil|QE09|Guará1|71020-029|61 991234567|alberto@gmail.com||
|Beatriz|Maria|Brasil|405|AsaSul|71820-100|61 997654321|beatriz@gmail.com||
|Carmen|Antonia|Brasil|202|AsaNorte|71020-012|61 991239955|1234@|"E-mail inválido"|
|Daniel|Araújo|Brasil||||61 998826645|daniel@gmail.com|"Preencher campos obrigatórios."|
