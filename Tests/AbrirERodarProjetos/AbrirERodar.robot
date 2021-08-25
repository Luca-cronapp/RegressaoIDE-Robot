***Settings***
Library    SeleniumLibrary
Library    FakerLibrary
Resource   ../../TestsKeywords/AbrirERodarProjetosKW/AbrirERodarKW.robot
Resource   ../../TestsKeywords/CriarERodarProjetosKW/CriarERodarKW.robot
Resource   ../../Resources/Setup.robot

***Test Cases***
Cenário 3 – Usuário abre um projeto qualquer
    [Tags]      smoketest
    Given que o usuário abre um projeto qualquer
    When o projeto carrega
    Then o botão de rodar deve estar habilitado

Cenário 3.1 – Usuário roda um projeto aberto
    [Tags]      smoketest
    Given que o usuário roda o projeto
    When o usuário loga no projeto em execução
    Then o usuário deve poder ver a mensagem “Página inicial”

Cenário 3.2 – Usuário cadastra um dado na entidade pessoa
    Given que o usuário acessa o cadastro da entidade pessoas
    When o usuário cadastra uma nova pessoa com os dados corretos
    Then o dado cadastrado deve cadastrado aparecer na grade

Cenário 3.3 – Usuário edita um dado na entidade pessoa
    Given que o usuário acessa o cadastro da entidade pessoas
    When o usuário edita o dado da entidade pessoas
    Then o dado alterado deve aparecer na grade
