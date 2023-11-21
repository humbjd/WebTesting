*** Settings ***
Library        SeleniumLibrary
       

*** Variables ***
${BROWSER}                    gc
${URL}                        http://amazon.com.br
${MENU_ELETRONICOS}           //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]   
${TEXTO_HEADER_ELETRONICOS}   Eletrônicos e Tecnologia     
${HEADER_ELETRONICOS}         //span[@class='a-size-base a-color-base apb-browse-refinements-indent-1 a-text-bold'][contains(.,'Eletrônicos e Tecnologia')]
 

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU ELETRONICOS}
Entrar no menu "Eletrônicos"
    Click Element    locator=${MENU ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible    locator=//img[contains(@alt,'${NOME_CATEGORIA}')]
                                         
Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa, se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])[3]


#    GHERKIN STEPS

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletrônicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Tablets"
    Verificar se aparece a categoria "Smartwatches"
    Verificar se aparece a categoria "PC Gamer"    

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa

Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Verificar se o título da página fica "Amazon.com.br : Xbox Series S"

E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa, se está listando o produto "Console Xbox Series S"

#    EXERCICIOS CENARIO 03

Adicionar o produto "Console Xbox Series S" no carrinho
    Click Element    locator=(//span[contains(.,'Console Xbox Series S')])[3]
    Wait Until Element Is Visible    locator=productTitle
    Click Button    locator=add-to-cart-button

Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso    
    Wait Until Element Is Visible    locator=//span[contains(.,'Adicionado ao carrinho')]

#    EXERCICIOS CENARIO 04

Remover o produto "Console Xbox Series S" do carrinho
    Click Element    locator=//a[contains(@data-csa-c-type,'button')]
    Wait Until Element Is Visible    locator=//span[@class='a-truncate-cut'][contains(.,'Console Xbox Series S')]
    Click Element    locator=//input[@value='Excluir']

Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=//h1[contains(.,'Seu carrinho de compras da Amazon está vazio.')]

#    GHERKIN STEPS EXERCICIOS 03

# Dado que estou na home page da Amazon.com.br
#     Acessar a home page do site Amazon.com.br
#     Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

Quando adicionar o produto "Console Xbox Series S" no carrinho
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Adicionar o produto "Console Xbox Series S" no carrinho

Então o produto "Console Xbox Series S" deve ser mostrado no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

#    GHERKIN STEPS EXERCICIOS 04

# Dado que estou na home page da Amazon.com.br
#     Acessar a home page do site Amazon.com.br
#     Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."

E existe o produto "Console Xbox Series S" no carrinho
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

Quando remover o produto "Console Xbox Series S" do carrinho
    Remover o produto "Console Xbox Series S" do carrinho

Então o carrinho deve ficar vazio
    Verificar se o carrinho fica vazio
    