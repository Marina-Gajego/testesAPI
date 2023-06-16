*** Settings ***
Library    RequestsLibrary
Library    OperatingSystem
Library    String
Library    Collections
Resource   ../steps/CommonsResources.robot

*** Keywords ***

# ---- DADO

# ---- QUANDO
Quando realizo um cadastro de usuario
    IF    '${TEST_TAGS[0]}' == 'S01CT12'
        Quando realizo um cadastro de usuario com um email já existente
    ELSE
        Criar um usuario aleatorio
    END

    Realiza a requisicao api de cadastro

Quando realizo um cadastro de usuario com um email já existente
    Set Test Variable    ${NOME}    marina
    Set Test Variable    ${EMAIL_TESTE}    ${NOME}@emailteste.com

# ---- ENTÃO

# ----- E
E realizo novamente um cadastro com o mesmo email
    Quando realizo um cadastro de usuario com um email já existente    
    Quando realizo um cadastro de usuario       

# ---- STEPS

Criar um usuario aleatorio
    ${palavra_aleatoria}    Generate Random String    length=5    chars=[LETTERS]
    Set Test Variable    ${NOME}    ${palavra_aleatoria}
    ${palavra_aleatoria}    Convert To Lower Case    ${palavra_aleatoria}
    Set Test Variable    ${EMAIL_TESTE}    ${palavra_aleatoria}@emailteste.com

E verifico se o usuario foi cadastrado
    Dictionary Should Contain key    ${response.json()}    _id

Realiza a requisicao api de cadastro
    ${BODY}    Format String    C:/Users/mgaje/OneDrive/Área de Trabalho/testesAPI/resources/data/API_Cadastro/${TEST_TAGS[0]}.json
    ...    nome=${NOME}
    ...    email_teste=${EMAIL_TESTE}
    ${response}    POST On Session    ${ALIAS}    ${URL}${ENDEPONT_USUARIOS}    
    ...    data=${BODY}    expected_status=any
    Log    ${response.json()}
    Set Test Variable    ${response}