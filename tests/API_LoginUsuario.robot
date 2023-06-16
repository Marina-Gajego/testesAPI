*** Settings ***
Resource    ../steps/CommonsResources.robot
Resource    ../resources/API_ListaUsuarioResources.robot
Resource    ../resources/API_LoginUsuarioResources.robot

*** Test Cases ***
CT01: Realizar login - Sucesso
    [Tags]    S03CT01
    Dado que estou conectado na api
    E tenho um usuario cadastrado para testes de login
    Quando realizo a requisição da api logar no sistema
    Então a requisição deve ocorrer com sucesso (status_code=200)

CT02: Realizar login com senha incorreta - (motivo falha: senha incorreta)
    [Tags]    S03CT02
    Dado que estou conectado na api
    E tenho um usuario cadastrado para testes de login
    Quando realizo a requisição da api logar no sistema
    Então a requisição deve ocorrer sem sucesso (status_code=401)
    
CT03: Realizar login com email incorreto - (motivo falha: email incorreto)
    [Tags]    S03CT03
    Dado que estou conectado na api
    E tenho um usuario cadastrado para testes de login
    Quando realizo a requisição da api logar no sistema
    Então a requisição deve ocorrer sem sucesso (status_code=401)

CT04: Realizar login com senha e email incorretos - (motivo falha: email e senha incorretos)
    [Tags]    S03CT04
    Dado que estou conectado na api
    E tenho um usuario cadastrado para testes de login
    Quando realizo a requisição da api logar no sistema
    Então a requisição deve ocorrer sem sucesso (status_code=401)

CT05: Realizar login sem informar o campo email - (motivo falha: campo email não informado)
    [Tags]    S03CT05
    Dado que estou conectado na api
    E tenho um usuario cadastrado para testes de login
    Quando realizo a requisição da api logar no sistema
    Então a requisição deve ocorrer sem sucesso (status_code=400)

CT06: Realizar login sem informar o campo senha - (motivo falha: campo senha não informado)
    [Tags]    S03CT06
    Dado que estou conectado na api
    E tenho um usuario cadastrado para testes de login
    Quando realizo a requisição da api logar no sistema
    Então a requisição deve ocorrer sem sucesso (status_code=400)

