*** Settings ***
Documentation  Exercicios de FOR e IF do robotframework

*** Variables ***
@{NUMEROS}  0  1  2  3  4  5  6  7  8  9  10

*** Test Cases ***
Teste para imprimir alguns numeros
    Imprimir em caso de 5 e 10

*** Keywords ***
Imprimir em caso de 5 e 10
    Log To Console    message=${\n}

    FOR    ${NUMERO}    IN    @{NUMEROS}
        IF  ${NUMERO} == 5 or ${NUMERO} == 10
            Log To Console    Eu sou o número ${NUMERO}!
        ELSE  
            Log To Console    Eu não sou o número 5 e nem o 10!
        END  
    END

    Log To Console  ${\n}
  FOR    ${NUMERO}    IN   @{NUMEROS}
      IF  ${NUMERO} in (5, 10)
          Log To Console    Eu sou o número ${NUMERO}!
      ELSE
          Log To Console    Eu não sou o número 5 e nem o 10!
      END              
  END
  