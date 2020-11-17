#language: pt

Funcionalidade: Cadastro de funcionários
    Para que eu possa disponibilizar funcionários no catálogo
    Sendo um usuário logado
    Posso cadastrar um novo funcionário

    @registrar_funcionario @auth @smoke
    Cenario: Novo funcionário

        Dado que eu tenho o seguinte funcionário:
            | nome  | cargo | cpf         | salario  | sexo      | tipo_contratacao | admissao   |
            | Vitor | QA    | 12345678910 | 10.000,00 | Masculino | clt              | 17/11/2020 |
        Quando eu faço o cadastro desse funcionário
        Entao devo ver este item na lista de funcionários
