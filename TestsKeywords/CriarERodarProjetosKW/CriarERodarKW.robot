***Settings***
Library    SeleniumLibrary
Library    FakerLibrary
Resource   ../../Resources/Setup.robot
Resource   CriarERodarVariables.robot

***Keywords***
que o usuário loga na Cronapp
    Abrir navegador
    

o usuário cria um projeto web e mobile
    Sleep                             15s
    Wait until element is visible     ${BtnNovoProjeto}
    Sleep                             3s
    Click element                     ${BtnNovoProjeto}
    Wait until element is visible     ${NovoOpcaoWebMobile}
    Sleep                             2s
    Click element                     ${NovoOpcaoWebMobile}
    Wait until element is visible     ${NomeProjeto}
    ${DadoNomeProjeto}                FakerLibrary.Word
    set suite variable                ${DadoNomeProjeto} 
    Sleep                             4s
    Input text                        ${NomeProjeto}      ${DadoNomeProjeto}   
    Wait until element is visible     ${BtnAvancar1}
    Sleep                             4s
    Click element                     ${BtnAvancar1}
    Sleep                             5s
    Wait until element is visible     ${OpcaoTema}
    Click element                     ${OpcaoTema}
    Wait until element is visible     ${BtnAvancar2}
    Sleep                             3s
    Click element                     ${BtnAvancar2}
    Wait until element is visible     ${BtnAvancar2}
    Sleep                             3s
    Click element                     ${BtnAvancar2}
    Wait until element is visible     ${BtnFinalizar}
    Sleep                             3s
    Click element                     ${BtnFinalizar}
    Sleep                             5s
    
    
o título do projeto mobile deve conter o nome escolhido pelo usuário
    Sleep                             60s
    Wait until element is visible     ${NomeProjetoRaizB}
    Element should contain            ${NomeProjetoRaizB}     ${DadoNomeProjeto}

que o usuário roda o projeto
    Sleep                             50s
    Wait until element is visible     ${RodarProjeto}
    Sleep                             2s
    Click element                     ${RodarProjeto}       
    Wait until element is visible     ${AbrirNavegador}
    Sleep                             2s
    Click element                     ${AbrirNavegador}
    Switch Window                     new

o usuário loga no projeto em execução
    Wait until element is visible     ${UserInput}
    Sleep                             1s
    Input text                        ${UserInput}        admin
    Wait until element is visible     ${SenhaInput}       
    Sleep                             1s
    Input text                        ${SenhaInput}       admin
    Sleep                             1s
    Wait until element is visible     ${BtnLogar}
    Sleep                             1s
    Click element                     ${BtnLogar}
    Set Selenium Timeout              10s

o usuário deve poder ver a mensagem “Página inicial”
    Wait until element is visible     ${H1PagInicial}
    Element should contain            ${H1PagInicial}    Pagina inicial
    Sleep                             5s
    Set Selenium Timeout              50s
    Close browser

o usuário cria um projeto web
    Sleep                             15s
    Wait until element is visible     ${BtnNovoProjeto}
    Click element                     ${BtnNovoProjeto}
    Sleep                             1s
    Click element                     ${NovoOpcaoWeb}
    Sleep                             1s
    Wait until element is visible     ${NomeProjeto}
    ${DadoNomeProjeto}                FakerLibrary.Word
    set suite variable                ${DadoNomeProjeto}
    Sleep                             1s
    Input text                        ${NomeProjeto}      ${DadoNomeProjeto}   
    Wait until element is visible     ${BtnAvancar1}
    Sleep                             1s
    Click element                     ${BtnAvancar1}
    Sleep                             1s
    Wait until element is visible     ${OpcaoTemaWeb}
    Click element                     ${OpcaoTemaWeb}
    Wait until element is visible     ${BtnAvancar2}
    Sleep                             1s
    Click element                     ${BtnAvancar2}
    Wait until element is visible     ${BtnAvancar2}
    Sleep                             1s
    Click element                     ${BtnAvancar2}
    Sleep                             1s
    Click element                     ${BtnAvancar2}
    Wait until element is visible     ${BtnFinalizar}
    Sleep                             1s
    Click element                     ${BtnFinalizar}

o título do projeto web deve conter o nome escolhido pelo usuário
    Sleep                             30s
    Wait until element is visible     ${NomeProjetoRaizB}
    Element should contain            ${NomeProjetoRaizB}     ${DadoNomeProjeto}