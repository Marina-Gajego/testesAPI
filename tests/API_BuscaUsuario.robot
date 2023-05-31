*** Settings ***
Resource    ../resources/API_CadastroUsuarioResources.robot
Resource    ../steps/CommonsResources.robot
Resource    ../resources/API_ListaUsuarioResources.robot

*** Test Cases ***
CT01: Buscar um usuario - Sucesso
    [Tags]    CT01
    Dado que estou conectado na api
    Quando realizo a requisição da api para listar os usuarios
    Então o cadastro deve ocorrer com sucesso (status_code=200)
    E verifico se existe registro de usuarios retornados















Buscar um usuario inexistente
buscar um usuario com o parametro adm como false
buscar um usuario com o parametro adm como true

não infromando o parametro adm
