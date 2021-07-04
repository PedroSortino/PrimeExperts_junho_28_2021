*** Settings ***
Documentation    teste case web
Resource         resource_web.robot
Suite Setup       Abrir o navegador



 
*** Test Cases ***
Caso de Teste 04: Criar cadastro
    Acessar a página home do site
    Clicar em "Signin"
    Informar e-mail "pedrosorti@hotmail.com"
    Clicar em "Createanaccount"
    Preencher Title
    Preencher First Name Pedro
    Preencher Last name Sortino
    Preencher password 123456
    Preencher dia de nascimento 22
    Preencher mes de nascimento 11
    Preencher ano de nascimento 1990
    Preencher Company PrimeExperts 
    Preencher endereço Yutaka Ishihara
    Preencher cidade Ribeirao Pires
    Preencher Estado 5
    Preencher Zip code 90011
    Preencher celular 11974038923
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso MY ACCOUNT 