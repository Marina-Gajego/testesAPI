*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource   ../steps/CommonsResources.robot

*** Variables ***

*** Keywords ***

# ---- DADO

# ---- QUANDO
Quando realizo a requisição da api para listar todos os usuarios cadastrados
    Requisição da api geral

Quando realizo a requisição da api de um usuario especifico
    Requisição da api com um usuario especifico

Quando realizo a requisição da api informando apenas o campo id
    IF    '${TEST_TAGS[0]}' == 'S02CT05'
        Set Test Variable     ${keys}    ?_id=00000000000
    ELSE
        Set Test Variable     ${keys}    ?_id=0uxuPY0cbmQhpEz1
    END

    Requisição da api com um usuario especifico

Quando realizo a requisição da api informando apenas o campo nome
    IF    '${TEST_TAGS[0]}' == 'S02CT07'
        Set Test Variable     ${keys}    ?nome=Marina%20Gajego
    ELSE
        Set Test Variable     ${keys}    ?nome=Fulano%20da%20Silva
    END

    Requisição da api com um usuario especifico

Quando realizo a requisição da api informando apenas o campo email
    IF    '${TEST_TAGS[0]}' == 'S02CT09'
        Set Test Variable     ${keys}    ?email=marina%40qualidade.com
    ELSE
        Set Test Variable     ${keys}    ?email=fulano%40qa.com
    END

    Requisição da api com um usuario especifico

Quando realizo a requisição da api informando apenas o campo password
    IF    '${TEST_TAGS[0]}' == 'S02CT11'
        Set Test Variable     ${keys}    ?password=senhainexistente
    ELSE
        Set Test Variable     ${keys}    ?password=teste
    END

    Requisição da api com um usuario especifico

Quando realizo a requisição da api informando apenas o campo administrador
    IF    '${TEST_TAGS[0]}' == 'S02CT13'
        Set Test Variable     ${keys}    ?administrador=false
    ELSE
        Set Test Variable     ${keys}    ?administrador=true
    END

    Requisição da api com um usuario especifico

# ---- ENTÃO

# ----- E
E tenho um usuario cadastrado
    Quando realizo um cadastro de usuario

E verifico se existe registro de usuarios retornados
    Should Not Be Equal    '${response.json()}[quantidade]'   '0'

E verifico se não existe registro de usuarios retornados
    Should Be Equal    '${response.json()}[quantidade]'   '0'

# ---- STEPS
Requisição da api com um usuario especifico
    IF    '${TEST_TAGS[0]}' == 'S02CT02'
        Set Test Variable     ${keys}     ?nome=Usuario%20Nao%20Existente&email=fulano%40qa.com&password=teste&administrador=true
    ELSE IF    '${TEST_TAGS[0]}' == 'S02CT03'
        Set Test Variable     ${keys}     ?nome=Fulano%20da%20Silva&email=fulano%40qa.com&password=teste&administrador=true
    END
    ${response}    GET On Session    ${ALIAS}    ${URL}${ENDEPONT_USUARIOS}${keys}
    ...     expected_status=any
    Log    ${response.json()}
    Set Test Variable    ${response}
    
Requisição da api geral
    ${response}    GET On Session    ${ALIAS}    ${URL}${ENDEPONT_USUARIOS}    
    ...     expected_status=any
    Log    ${response.json()}
    Set Test Variable    ${response}