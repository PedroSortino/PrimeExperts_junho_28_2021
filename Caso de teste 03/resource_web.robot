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

Passar o mouse por cima da categoria "${Women}" no menu principal superior de categorias
    Element Should Be Visible   //a[contains(@title,'Women')]
    Mouse Over                  //a[contains(@title,'Women')]   

Clicar na sub categoria "${summer_dresses}"
    Element Should Be Visible   (//a[contains(@title,'Summer Dresses')])[1]
    Click Element               (//a[contains(@title,'Summer Dresses')])[1]

Conferir se os produtos da sub-categoria"Summer Dresses" foram mostrados na página
    Element Should Be Visible   //img[@src='http://automationpractice.com/img/p/1/2/12-home_default.jpg']
    Element Should Be Visible   //img[@src='http://automationpractice.com/img/p/1/6/16-home_default.jpg']
    Element Should Be Visible   //img[contains(@alt,'Printed Chiffon Dress')]