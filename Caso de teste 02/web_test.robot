*** Settings ***
Documentation    teste case web
Resource         resource_web.robot
Suite Setup       Abrir o navegador
Suite Teardown    Fechar o navegador


 
*** Test Cases ***
Caso de Teste 02: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "itemnãoexistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se mensagem "No results were found for your search "itemnãoexistente"" é exibida
