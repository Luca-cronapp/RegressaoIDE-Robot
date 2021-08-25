***Variables***
#Página principal da IDE elementos
${BotaoAbrirProjeto}    //div[@ui-id="workspaceview-toolbar-openproject"]
${ProjetoSelecionado}   //div[contains(text(),'Atual-S')]

#Elementos do Projeto aberto
${BotaoAtualizaLibs}    //div[contains(text(),'Sim')]
${NomeProjetoAberto}    //div[@ui-id="resourcesTreeRoot"]
${NomeProjetoBase}      Atual-S
${BotaoRodar}           //div[@ui-id="openProject-startDebugItem"]