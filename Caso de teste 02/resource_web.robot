*** Settings ***
Documentation    arquivo responsavel pelas importacoes, variaveis e KeyWords
Library          SeleniumLibrary
 
*** Variables ***
${URL}    http://automationpractice.com
 
*** Keywords ***
#Será aberto o navegador
Abrir o navegador
    Open Browser    browser=Chrome
 #fechar a página 
Fechar o navegador
    Close Browser
 
# Será feito o acesso
Acessar a página home do site Automation Practice
    Go To    ${URL}
 #Será inserido o nome do produto
Digitar o nome do produto "${produto}" no campo de pesquisa
    Wait Until Element Is Visible       id:search_query_top
    Input Text    id:search_query_top    ${produto}
 #Será feita a busca
Clicar no botão pesquisar
    Click Button     name:submit_search
 #Será feita a verificação da mensagem no site
Conferir se mensagem "${mensagem}" é exibida
    Wait Until Element Is Visible    //p[contains(.,'No results were found for your search "itemnãoexistente"')]
    Element Text Should Be      //p[contains(.,'No results were found for your search "itemnãoexistente"')]   ${mensagem}

