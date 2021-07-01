***Settings***
Documentation       Exercicio variaveis

***Variables***
${Nome}   Pedro Augusto Sortino
${idade}  30 
${Sexo}   Masculino
${cidade}   Ribeirão Pires
${estado}   São Paulo
${pais}   Brasil

**Test Cases***
Nome
    Informar nome

idade
    Informar idade

sexo
    Informar sexo

cidade
    Informar cidade

estado
    Informar estado

pais
    Informar pais            


**Keywords***
Informar nome
    Log To Console     ${Nome}

Informar idade   
    log to Console     ${idade} 

Informar sexo
    Log To Console     ${sexo}

Informar cidade
    log to Console     ${cidade}  

Informar estado
    Log To Console     ${estado}

Informar pais
    log to Console     ${pais}