*** Settings ***
Library    RequestsLibrary

Resource    ../steps/Globais.robot
Resource    ../resources/API_CadastroUsuarioResources.robot

*** Keywords ***

# ---- DADO

Dado que estou conectado na api
    Conectar na api

# ---- QUANDO

# ---- ENTÃO

Então o cadastro deve ocorrer com sucesso (status_code=${status_code})
    Conferir o status da requisição    ${status_code}    ${response}

Então o cadastro deve ocorrer sem sucesso (status_code=${status_code})
    Conferir o status da requisição    ${status_code}    ${response}

# ----- E

# ---- STEPS

Conectar na api
    ${headers}    Create Dictionary    Content-Type=application/json    accept=application/json
    Create Session    ${ALIAS}    ${URL}    ${headers}

Conferir o status da requisição 
    [Arguments]  ${status_code}  ${resultado}
    Log    status_code retornado:${resultado}     
    Status Should Be    ${status_code}    ${resultado}
    ...  msg=O status code não é o esperado pelo teste: status obtido ${resultado}

Conferir mensagem de erro
    [Arguments]  ${response_erro}  ${mensagem}
    IF    '${TEST_TAGS[0]}' == 'CT02' or '${TEST_TAGS[0]}' == 'CT07' 
        Log To Console    Erro retornado pela api:${response_erro["nome"]}
    ELSE IF    '${TEST_TAGS[0]}' == 'CT03' or '${TEST_TAGS[0]}' == 'CT08' 
        Log To Console    Erro retornado pela api:${response_erro["email"]}
    ELSE IF    '${TEST_TAGS[0]}' == 'CT04' or '${TEST_TAGS[0]}' == 'CT09'
        Log To Console    Erro retornado pela api:${response_erro["password"]}
    ELSE IF    '${TEST_TAGS[0]}' == 'CT05' or '${TEST_TAGS[0]}' == 'CT10'
        Log To Console    Erro retornado pela api:${response_erro["administrador"]}
    ELSE
        Log To Console    Erro retornado pela api:${response_erro["message"]}
    END  
 
    Log    ${response_erro}