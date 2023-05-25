*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource   ../steps/CommonsResources.robot

*** Variables ***

*** Keywords ***

Criar um usuario aleatorio
    ${palavra_aleatoria}    Generate Random String    length=5    chars=[LETTERS]
    Set Test Variable    ${NOME}    ${palavra_aleatoria}
    ${palavra_aleatoria}    Convert To Lower Case    ${palavra_aleatoria}
    Set Test Variable    ${EMAIL_TESTE}    ${palavra_aleatoria}@emailteste.com

Quando realizo um cadastro de usuario
    Criar um usuario aleatorio
    ${BODY}    Format String    C:/testesAPI/resources/data/teste.json
    ...    nome=${NOME}
    ...    email_teste=${EMAIL_TESTE}
    ${response}    POST On Session    ${ALIAS}    ${URL}${ENDEPONT_USUARIOS}    
    ...    data=${BODY}
    Log    ${response.json()}
    Set Test Variable    ${response}
    
Então o cadastro deve ser realizado com sucesso
    Dictionary Should Contain Item  ${response.json()}  message  Cadastro realizado com sucesso
    Dictionary Should Contain key    ${response.json()}    _id    
