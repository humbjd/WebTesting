*** Settings ***
Documentation    Exercicio Dicionario Utilizando Calendario

*** Variables ***
&{CALENDARIO}    Janeiro=31  Fevereiro=28  Março=31  Abril=30  Maio=31  Junho=30  Julho=31  Agosto=31  Setembro=30  Outubro=31  Novembro=30  Dezembro=31

*** Test Cases ***
caso de teste do exercicio dicionario
    mostrar dicionario

*** Keywords ***
mostrar dicionario

    Log To Console    message=Em Janeiro temos ${CALENDARIO.Janeiro} dias
    Log To Console    message=Em Fevereiro temos ${CALENDARIO.Fevereiro} dias
    Log To Console    message=Em Março temos ${CALENDARIO.Março} dias
    Log To Console    message=Em Abril temos ${CALENDARIO.Abril} dias
    Log To Console    message=Em Maio temos ${CALENDARIO.Maio} dias
    Log To Console    message=Em Junho temos ${CALENDARIO.Junho} dias
    Log To Console    message=Em Julho temos ${CALENDARIO.Julho} dias
    Log To Console    message=Em Agosto temos ${CALENDARIO.Agosto} dias
    Log To Console    message=Em Setembro temos ${CALENDARIO.Setembro} dias
    Log To Console    message=Em Outubro temos ${CALENDARIO.Outubro} dias
    Log To Console    message=Em Novembro temos ${CALENDARIO.Novembro} dias
    Log To Console    message=Em Dezembro temos ${CALENDARIO.Dezembro} dias

