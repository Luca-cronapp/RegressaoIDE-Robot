***Variables***
#Elementos criar novo projeto
${BtnNovoProjeto}      //div[3]/div/div/div
${NovoOpcaoWebMobile}  //div[@ui-id="newProject-btn-mobile"]
${NovoOpcaoWeb}        //div[@ui-id="newProject-btn-web"]
${NomeProjeto}         //*[@ui-id='newProject-projectName']/..//div[contains(text(),'Insira o valor')]/../input
${BtnAvancar1}         //div[@ui-id="newProject-finish-button"]
${OpcaoTema}           //div[@ui-id="template-item-cronapp-rad-project-mobile-cordova"]
${OpcaoTemaWeb}        //div[@ui-id="template-item-cronapp-rad-project"]
${OpcaoFrontEnd}       //div[@ui-id="wizard-template-frontend-control"]
${OpcaoBackEnd}        //div[@ui-id="wizard-template-backend-control"]
${TipoAuth}            //div[@ui-id="wizard-template-authentication-control"]
${BtnAvancar2}         //div[@ui-id="template-next-button"]
${BtnFinalizar}        //div[@ui-id="template-finish-button"]
${NomeProjetoRaizB}    //div[@ui-id="resourcesTreeRoot"]

#Elementos de rodar o projeto criado
${RodarProjeto}        //div[@ui-id="openProject-startDebugItem"]
${AbrirNavegador}      //div[@ui-id="openProject-runMobileWeb-web-btn"]

#Elementos login aplicação gerada
${UserInput}           //input[@ng-model="username.value"]
${SenhaInput}          //input[@ng-model="password.value"]
${BtnLogar}            //button[@aria-label="Entrar"]

#Elementos página inicial aplicação gerada
${H1PagInicial}        css:h1.title