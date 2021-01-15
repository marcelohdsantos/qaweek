#language: pt

Funcionalidade: Login
    Sendo um usuário previamente cadastrado
    Quero acessar o sistema com meu email e senha
    Para que eu possa ter acesso as playlists do Parodify
    
    @smoke
    Cenário: Login do usuário

        Dado que acesso a página de Login
        Quando submeto minhas credenciais com: "fernando@bol.com.br" e "pwd123"
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de login
        Dado que acesso a página de login
        Quando submeto minhas credenciais com: "<email>" e "<senha>"
        Então devo ver a mensagem de erro: "Oops! Dado de acesso incorretos!"

        Exemplos:
            | email                     | senha  |
            | marcelo@automatictest.com | pwe123 |
            |                           |        |
            | fernando@gmail.com.br     |        |
            | fernando@404.com.br       |        |