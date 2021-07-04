*** Settings ***
Documentation    arquivo responsavel pelas importacoes, variaveis e KeyWords
Library          SeleniumLibrary
 
*** Variables ***
${URL}    http://automationpractice.com
 
*** Keywords ***
#Será aberto o navegador
Abrir o navegador
    Open Browser    browser=Chrome

# Será feito o acesso
Acessar a página home do site
    Go To    ${URL}

Clicar em "Signin"
    Wait Until Element Is Visible   //a[contains(.,'Sign in')]
    Click Element                   //a[contains(.,'Sign in')]  

Informar e-mail "${email}"
    Wait Until Element Is Visible       id:email_create
    Input Text    id:email_create    ${email}

Clicar em "Createanaccount"
    Click Element   //span[contains(.,'Create an account')] 

Preencher Title
    Wait Until Element Is Visible  id:id_gender1 
    Click Button    id:id_gender1

Preencher First Name ${first}
    Input Text  id:customer_firstname   ${first} 

Preencher Last name ${Last}
    Input Text  id:customer_lastname    ${last}

Preencher password ${senha}
    Input Text  id:passwd   ${senha} 

Preencher dia de nascimento ${dia}
   Select From List By Value    //select[contains(@name,'days')]    ${dia}

Preencher mes de nascimento ${mes}
    Select From List By Value   //select[contains(@name,'months')]  ${mes}

Preencher ano de nascimento ${year}
   Select From List By Value   //select[contains(@name,'years')]    ${year}

Preencher Company ${company}
    Input Text   id:company     ${company}

Preencher endereço ${endereço}
    Input Text   id:address1    ${endereço}

Preencher cidade ${cidade}
    Input Text  id:city     ${cidade} 

Preencher Estado ${state}            
    Select From List By Value   //select[@name='id_state'][contains(@id,'state')]   ${state}  

Preencher Zip code ${code}
    Input Text  id:postcode     ${code} 

Preencher celular ${cel}
    Input Text  id:phone_mobile    ${cel}

Submeter cadastro
    Click Element   //span[contains(.,'Register')]

Conferir se o cadastro foi efetuado com sucesso ${ACC}
    Element Text Should Be      //h1[@class='page-heading'][contains(.,'My account')]   ${ACC}