*** Settings ***
Documentation    Exercicios de argumentos em keywords
Library    String

*** Variables ***
&{PESSOA}    nome=humberto    sobrenome=dantas

*** Test Cases ***
Imprimir email customizado e aleatório
    ${EMAIL_CRIADO}    Criar email    ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log To Console     ${EMAIL_CRIADO}

*** Keywords ***
Criar email
    [Arguments]         ${NOME}    ${SOBRENOME}    
    ${ALEATORIO}        Generate Random String
    ${EMAIL_FINAL}      Set Variable    ${NOME}${SOBRENOME}${ALEATORIO}@testerobot.com
    [Return]            Email Gerado:   ${EMAIL_FINAL}


