#language: pt

Funcionalidade: Cadastro de usuário
    Para que eu possa logar no sistema
    Sendo um usuário não cadastrado
    Posso cadastrar um novo usuário

    @registrar_usuario @auth @smoke
    Cenario: Novo usuário

        Dado que eu tenho o seguinte usuário:
            | usuario       | senha  | confirma_senha |
            | vitor.botechi | 123456 | 123456         |
        Quando eu faço o cadastro desse usuário
        Entao devo ser cadastrado


    @register_user_attempts @smoke
    Esquema do Cenario: Tentar cadastrar usuário

        Quando eu submeto minhas credenciais "<usuario>", "<senha>" e "<confirma_senha>"
        Então devo ver uma mensagem de alerta "<texto>"

        Exemplos:
            | usuario       | senha  | confirma_senha | texto                 |
            | vitor.botechi | 123456 | 123456         | Usuário já cadastrado |
            | vitor.botechi | 123    | 123456         | Senhas não combinam   |
            | vitor.botechi | 123456 | 123            | Senhas não combinam   |
