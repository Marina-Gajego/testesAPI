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
Quando realizo um cadastro de usuario
    IF    '${TEST_TAGS[0]}' == 'CT12'
        Quando realizo um cadastro de usuario com um email já existente
    ELSE
        Criar um usuario aleatorio
    END
    ${BODY}    Format String    C:/testesAPI/resources/data/${TEST_TAGS[0]}.json
    ...    nome=${NOME}
    ...    email_teste=${EMAIL_TESTE}
    ${response}    POST On Session    ${ALIAS}    ${URL}${ENDEPONT_USUARIOS}    
    ...    data=${BODY}    expected_status=any
    Log    ${response.json()}
    Set Test Variable    ${response}

Quando realizo um cadastro de usuario com um email já existente
    Set Test Variable    ${NOME}    marina
    Set Test Variable    ${EMAIL_TESTE}    ${NOME}@emailteste.com


# ---- ENTÃO

# ----- E
E realizo novamente um cadastro com o mesmo email
    Quando realizo um cadastro de usuario com um email já existente    
    Quando realizo um cadastro de usuario       

E deve ser retornado a mensagem de erro "${MENSAGEM}"
    IF    '${TEST_TAGS[0]}' == 'CT01' or '${TEST_TAGS[0]}' == 'CT06' 
        Should Be Equal    ${MENSAGEM}    Cadastro realizado com sucesso
    ELSE IF    '${TEST_TAGS[0]}' == 'CT02'
        Should Be Equal    ${MENSAGEM}    nome é obrigatório
    ELSE IF    '${TEST_TAGS[0]}' == 'CT03' 
        Should Be Equal    ${MENSAGEM}    email é obrigatório
    ELSE IF    '${TEST_TAGS[0]}' == 'CT04'
        Should Be Equal    ${MENSAGEM}    password é obrigatório
    ELSE IF    '${TEST_TAGS[0]}' == 'CT05'
        Should Be Equal    ${MENSAGEM}    administrador é obrigatório
    ELSE IF    '${TEST_TAGS[0]}' == 'CT07'
        Should Be Equal    ${MENSAGEM}    nome deve ser uma string
    ELSE IF    '${TEST_TAGS[0]}' == 'CT08'
        Should Be Equal    ${MENSAGEM}    email deve ser uma string
    ELSE IF    '${TEST_TAGS[0]}' == 'CT09' 
        Should Be Equal    ${MENSAGEM}    passaword deve ser uma string
    ELSE IF    '${TEST_TAGS[0]}' == 'CT10' or '${TEST_TAGS[0]}' == 'CT11'
        Should Be Equal    ${MENSAGEM}    administrador deve ser 'true' ou 'false'
    ELSE IF    '${TEST_TAGS[0]}' == 'CT12'
        Should Be Equal    ${MENSAGEM}    Este email já está sendo usado
    ELSE
        Log To Console    A mensagem retornada pela api não é a aesperada pelo teste!
    END     

# ---- STEPS

Criar um usuario aleatorio
    ${palavra_aleatoria}    Generate Random String    length=5    chars=[LETTERS]
    Set Test Variable    ${NOME}    ${palavra_aleatoria}
    ${palavra_aleatoria}    Convert To Lower Case    ${palavra_aleatoria}
    Set Test Variable    ${EMAIL_TESTE}    ${palavra_aleatoria}@emailteste.com

E verifico se o usuario foi cadastrado
    Dictionary Should Contain key    ${response.json()}    _id
