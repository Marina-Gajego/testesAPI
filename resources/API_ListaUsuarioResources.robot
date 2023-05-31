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
Quando realizo a requisição da api para listar os usuarios
    ${response}    GET On Session    ${ALIAS}    ${URL}${ENDEPONT_USUARIOS}    
    ...     expected_status=any
    Log    ${response.json()}
    Set Test Variable    ${response}

# ---- ENTÃO

# ----- E
E verifico se existe registro de usuarios retornados
    Should Not Be Equal    '${response.json()}[quantidade]'   '0'

# ---- STEPS