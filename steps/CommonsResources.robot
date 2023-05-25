*** Settings ***
Library    RequestsLibrary

Resource    ../steps/Globais.robot

*** Keywords ***
Dado que estou conectado na api
    Conectar na api

Conectar na api
    ${headers}    Create Dictionary    Content-Type=application/json    accept=application/json
    Create Session    ${ALIAS}    ${URL}    ${headers}