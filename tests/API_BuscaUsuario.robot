*** Settings ***
Resource    ../resources/API_CadastroUsuarioResources.robot
Resource    ../steps/CommonsResources.robot
Resource    ../resources/API_ListaUsuarioResources.robot

*** Test Cases ***
CT01: Listar todos os usuario cadastrados - Sucesso
    [Tags]    S02CT01
    Dado que estou conectado na api
    E tenho um usuario cadastrado
    Quando realizo a requisição da api para listar todos os usuarios cadastrados
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se existe registro de usuarios retornados

CT02: Buscar um usuario inexistente - (motivo falha: usuario inexistente)
    [Tags]    S02CT02
    Dado que estou conectado na api
    Quando realizo a requisição da api de um usuario especifico
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se não existe registro de usuarios retornados

CT03: Buscar um usuario informando todos os campos - Sucesso
    [Tags]    S02CT03
    Dado que estou conectado na api
    Quando realizo a requisição da api de um usuario especifico
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se existe registro de usuarios retornados

CT04: Buscar um usuario informando apenas o campo id - Sucesso
    [Tags]    S02CT04
    Dado que estou conectado na api
    Quando realizo a requisição da api informando apenas o campo id
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se existe registro de usuarios retornados

CT05: Buscar um usuario informando apenas o campo id - (motivo falha: passando um id inexistente)
    [Tags]    S02CT05
    Dado que estou conectado na api
    Quando realizo a requisição da api informando apenas o campo id
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se não existe registro de usuarios retornados

CT06: Buscar um usuario informando apenas o campo nome - Sucesso
    [Tags]    S02CT06
    Dado que estou conectado na api
    Quando realizo a requisição da api informando apenas o campo nome
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se existe registro de usuarios retornados

CT07: Buscar um usuario informando apenas o campo nome - (motivo falha: passando um nome inexistente)
    [Tags]    S02CT07
    Dado que estou conectado na api
    Quando realizo a requisição da api informando apenas o campo nome
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se não existe registro de usuarios retornados

CT08: Buscar um usuario informando apenas o campo email - Sucesso
    [Tags]    S02CT08
    Dado que estou conectado na api
    Quando realizo a requisição da api informando apenas o campo email
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se existe registro de usuarios retornados

CT09: Buscar um usuario informando apenas o campo email - (motivo falha: passando um email inexistente)
    [Tags]    S02CT09
    Dado que estou conectado na api
    Quando realizo a requisição da api informando apenas o campo email
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se não existe registro de usuarios retornados

CT10: Buscar um usuario informando apenas o campo password - Sucesso
    [Tags]    S02CT10
    Dado que estou conectado na api
    Quando realizo a requisição da api informando apenas o campo password
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se existe registro de usuarios retornados

CT11: Buscar um usuario informando apenas o campo password - (motivo falha: passando um password inexistente)
    [Tags]    S02CT11
    Dado que estou conectado na api
    Quando realizo a requisição da api informando apenas o campo password
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se não existe registro de usuarios retornados

CT12: Buscar um usuario informando apenas o campo administrador como true - Sucesso
    [Tags]    S02CT12
    Dado que estou conectado na api
    Quando realizo a requisição da api informando apenas o campo administrador
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se existe registro de usuarios retornados

CT13: Buscar um usuario informando apenas o campo administrador como false - Sucesso
    [Tags]    S02CT13
    Dado que estou conectado na api
    Quando realizo a requisição da api informando apenas o campo administrador
    Então a requisição deve ocorrer com sucesso (status_code=200)
    E verifico se existe registro de usuarios retornados