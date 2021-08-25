***Settings***
Library    SeleniumLibrary
Resource   SetupVariables.robot

***Variables***
${URL}     https://ide-s.cronapp.io/


***Keywords***
Abrir navegador
    Set Selenium Timeout  50s
    Open browser   ${URL}  chrome
    Maximize Browser Window
    Wait until element is visible     ${UsernameLogin}
    Input text                        ${UsernameLogin}    ${UserName}
    Input password                    ${PasswordLogin}    ${Senha}
    Sleep                             2s
    Click element                     ${BtnEntrar} 
    Sleep                             5s

Fechar navegador
    Close browser