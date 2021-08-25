***Settings***
Library    SeleniumLibrary
Library    FakerLibrary
Resource   ../../Resources/Setup.robot
Resource   AbrirERodarVariables.robot

***Keywords***
que o usuário abre um projeto qualquer
    Abrir navegador
    Sleep                             15s
    Wait until element is visible     ${BotaoAbrirProjeto}
    Click element                     ${BotaoAbrirProjeto}
    Wait until element is visible     ${ProjetoSelecionado}
    Double Click element              ${ProjetoSelecionado}
    Sleep                             10s
    ${TemLibPraAtualizar}=            Get element count             ${BotaoAtualizaLibs}
    Sleep                             2s
    Run keyword if                    ${TemLibPraAtualizar} > 0     Click element       ${BotaoAtualizaLibs}
   
o projeto carrega
    Sleep                             30s
    Wait until element is visible     ${NomeProjetoAberto}
    Element should contain            ${NomeProjetoAberto}      ${NomeProjetoBase}


o botão de rodar deve estar habilitado
    Wait until element is visible    ${BotaoRodar}
    Element Should Be Enabled        ${BotaoRodar}


