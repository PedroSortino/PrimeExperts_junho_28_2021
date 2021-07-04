*** Settings ***
Documentation    teste case web
Resource         resource_web.robot
Suite Setup       Abrir o navegador
Suite Teardown    Fechar o navegador


 
*** Test Cases ***
Caso de Teste 02: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Clicar na sub categoria "Summer Dresses"
    Conferir se os produtos da sub-categoria"Summer Dresses" foram mostrados na página