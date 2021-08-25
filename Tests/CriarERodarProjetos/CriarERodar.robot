***Settings***
Library    SeleniumLibrary
Library    FakerLibrary
Resource   ../../TestsKeywords/CriarERodarProjetosKW/CriarERodarKW.robot
Resource   ../../Resources/Setup.robot


***Test Cases***
Cenário 1 - Usuário cria projeto web e mobile
    [Tags]      smoketest
    Given que o usuário loga na Cronapp
    When o usuário cria um projeto web e mobile
    Then o título do projeto mobile deve conter o nome escolhido pelo usuário

Cenário 1.1 – Usuário roda projeto mobile e web criado
    [Tags]      smoketest
    Given que o usuário roda o projeto
    When o usuário loga no projeto em execução
    Then o usuário deve poder ver a mensagem “Página inicial”

Cenário 2 – Usuário cria projeto web
    [Tags]      smoketest
    Given que o usuário loga na Cronapp
    When o usuário cria um projeto web
    Then o título do projeto web deve conter o nome escolhido pelo usuário

Cenário 2.1 – Usuário roda projeto web criado
    [Tags]      smoketest
    Given que o usuário roda o projeto
    When o usuário loga no projeto em execução
    Then o usuário deve poder ver a mensagem “Página inicial”

