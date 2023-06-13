*** Settings ***
Resource    ../resources/API_CadastroUsuarioResources.robot
Resource    ../steps/CommonsResources.robot

*** Test Cases ***
CT01: Cadastrar um usuário - Sucesso
    [Tags]    S01CT01
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer com sucesso (status_code=201)
    E verifico se o usuario foi cadastrado
    E deve ser retornado a mensagem de erro "Cadastro realizado com sucesso"

CT02: Cadastrar um usuário sem informar o campo nome - (motivo falha: campo nome não informado)
    [Tags]    S01CT02
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer sem sucesso (status_code=400)
    E deve ser retornado a mensagem de erro "nome é obrigatório"

CT03: Cadastrar um usuário sem informar o campo email - (motivo falha: campo email não informado)
    [Tags]    S01CT03
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer sem sucesso (status_code=400)
    E deve ser retornado a mensagem de erro "email é obrigatório"

CT04: Cadastrar um usuário sem informar o campo password - (motivo falha: campo password não informado)
    [Tags]    S01CT04
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer sem sucesso (status_code=400)
    E deve ser retornado a mensagem de erro "password é obrigatório"

CT05: Cadastrar um usuário sem informar o campo administrador - (motivo falha: campo administrador não informado)
    [Tags]    S01CT05
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer sem sucesso (status_code=400)
    E deve ser retornado a mensagem de erro "administrador é obrigatório"

CT06: Cadastrar um usuário informando o campo administrador como false - Sucesso
    [Tags]    S01CT06
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer com sucesso (status_code=201)
    E verifico se o usuario foi cadastrado
    E deve ser retornado a mensagem de erro "Cadastro realizado com sucesso"

CT07: Cadastrar um usuário informando um valor invalido no campo nome - (motivo falha: campo com valor invalido)
    [Tags]    S01CT07
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer sem sucesso (status_code=400)
    E deve ser retornado a mensagem de erro "nome deve ser uma string"

CT08: Cadastrar um usuário informando um valor invalido no campo email - (motivo falha: campo com valor invalido)
    [Tags]    S01CT08
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer sem sucesso (status_code=400)
    E deve ser retornado a mensagem de erro "email deve ser uma string"

CT09: Cadastrar um usuário informando um valor invalido no campo passaword - (motivo falha: campo com valor invalido)
    [Tags]    S01CT09
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer sem sucesso (status_code=400)
    E deve ser retornado a mensagem de erro "passaword deve ser uma string"

CT10: Cadastrar um usuário informando um valor invalido no campo administrador - (motivo falha: campo com valor invalido)
    [Tags]    S01CT10
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer sem sucesso (status_code=400)
    E deve ser retornado a mensagem de erro "administrador deve ser 'true' ou 'false'"

CT11: Cadastrar um usuário informando um valor diferente de true ou false no campo administrador - (motivo falha: campo com valor invalido)
    [Tags]    S01CT11
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então a requisição deve ocorrer sem sucesso (status_code=400)
    E deve ser retornado a mensagem de erro "administrador deve ser 'true' ou 'false'"

CT12: Cadastrar um usuário informando um email já cadastrado - (motivo falha: email já utilizado)
    [Tags]    S01CT12
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    E realizo novamente um cadastro com o mesmo email
    Então a requisição deve ocorrer sem sucesso (status_code=400)
    E deve ser retornado a mensagem de erro "Este email já está sendo usado"