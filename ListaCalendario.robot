*** Settings ***
Documentation    Exercicio Listas Utilizando Calendario

*** Variables ***
@{CALENDARIO}    Janeiro  Fevereiro  Março  Abril  Maio  Junho  Julho  Agosto  Setembro  Outubro  Novembro  Dezembro

*** Test Cases ***
caso de teste do exercicio lista
    mostrar lista

*** Keywords ***
mostrar lista
    # lendo uma lista
    Log    message=${CALENDARIO[0]}
    Log    message=${CALENDARIO[1]}
    Log    message=${CALENDARIO[2]}
    Log    message=${CALENDARIO[3]}
    Log    message=${CALENDARIO[4]}
    Log    message=${CALENDARIO[5]}
    Log    message=${CALENDARIO[6]}
    Log    message=${CALENDARIO[7]}
    Log    message=${CALENDARIO[8]}
    Log    message=${CALENDARIO[9]}
    Log    message=${CALENDARIO[10]}
    Log    message=${CALENDARIO[11]}