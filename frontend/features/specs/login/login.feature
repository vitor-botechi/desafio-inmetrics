#language:pt

Funcionalidade: Login
    Para que eu possa acessar o catálogo de funcionários do sistema Inmetrics
    Sendo um usuário cadastrado
    Posso acessar o sistema com meu usuário e senha

    Contexto:
        Dado que acesso a página principal

    @login_happy @smoke
    Cenario: Acessar o portal

        Quando eu submeto minhas credenciais "vitor.botechi" e "123456"
        Então devo ser autenticado

    @login_attempts @smoke
    Esquema do Cenario: Tentar logar

        Quando eu submeto minhas credenciais "<usuario>" e "<senha>"
        Então devo ver uma mensagem de alerta "<texto>"

        Exemplos:
            | usuario       | senha  | texto                            |
            | vitor.botechi | 123    | ERRO! Usuário ou Senha inválidos |
            | vitor         | 123456 | ERRO! Usuário ou Senha inválidos |
            |               | 123456 | Campo obrigatório                |
            | vitor.botechi |        | Campo obrigatório                |
