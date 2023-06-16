*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource   ../steps/CommonsResources.robot

*** Keywords ***

# ---- DADO

# ---- QUANDO

Quando realizo a requisição da api logar no sistema
    Realizar a requisição da api de login

# ---- E

E tenho um usuario cadastrado para testes de login
    Realizar a requisição para a api de cadastro

# ---- STEPS
Realizar a requisição da api de login
    ${BODY}    Get File    C:/Users/mgaje/OneDrive/Área de Trabalho/testesAPI/resources/data/API_Login/${TEST_TAGS[0]}.json
    ${response}    POST On Session    ${ALIAS}    ${URL}${ENDEPONT_LOGIN}    
    ...    data=${BODY}    expected_status=any
    Log To Console    ${response.json()}
    Set Test Variable    ${response}

Realizar a requisição para a api de cadastro
    ${BODY}    Get File    C:/Users/mgaje/OneDrive/Área de Trabalho/testesAPI/resources/data/API_Cadastro/${TEST_TAGS[0]}.json
    ${response}    POST On Session    ${ALIAS}    ${URL}${ENDEPONT_USUARIOS}    
    ...    data=${BODY}    expected_status=any
    Log    ${response.json()}
    Set Test Variable    ${response}
