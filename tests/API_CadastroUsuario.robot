*** Settings ***
Resource    ../resources/API_CadastroUsuarioResources.robot
Resource    ../steps/CommonsResources.robot

*** Test Cases ***
CT01: Cadastrar um usuário - Sucesso
    [Tags]    CT01
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então o cadastro deve ocorrer com sucesso (status_code=201)
    E verifico se o usuario foi cadastrado
    E deve ser retonado a mensagem "Cadastro realizado com sucesso"

CT02: Cadastrar um usuário sem informar o campo nome - (motivo falha: campo nome não informado)
    [Tags]    CT02
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então o cadastro deve ocorrer sem sucesso (status_code=400)
    E deve ser retonado a mensagem de erro "nome é obrigatório"

CT03: Cadastrar um usuário sem informar o campo email - (motivo falha: campo email não informado)
    [Tags]    CT03
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então o cadastro deve ocorrer sem sucesso (status_code=400)
    E deve ser retonado a mensagem de erro "email é obrigatório"

CT04: Cadastrar um usuário sem informar o campo password - (motivo falha: campo password não informado)
    [Tags]    CT04
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então o cadastro deve ocorrer sem sucesso (status_code=400)
    E deve ser retonado a mensagem de erro "password é obrigatório"

CT05: Cadastrar um usuário sem informar o campo administrador - (motivo falha: campo administrador não informado)
    [Tags]    CT05
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então o cadastro deve ocorrer sem sucesso (status_code=400)
    E deve ser retonado a mensagem de erro "administrador é obrigatório"