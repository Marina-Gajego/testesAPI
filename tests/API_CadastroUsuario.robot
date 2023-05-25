*** Settings ***
Resource    ../resources/API_CadastroUsuarioResources.robot
Resource    ../steps/CommonsResources.robot

*** Test Cases ***
CT01: Cadastrar um usuário - Sucesso
    Dado que estou conectado na api
    Quando realizo um cadastro de usuario
    Então o cadastro deve ser realizado com sucesso