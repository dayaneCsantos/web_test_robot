*** Settings ***
Resource    ../resources/index.robot
Test Setup    Dado que estou no site todomvc

*** Test Cases ***
Deve cadastrar um novo ToDo com sucesso
    [Documentation]    Verifica se é possível cadastrar um ToDo com sucesso
    [Tags]    Adicionar ToDo
    Quando adiciono "Retirar o lixo"
    Então será criado o item "Retirar o lixo" na lista

Deve marcar um item previamente cadastrado como concluído
    [Documentation]    Verifica se é possível marcar um ToDo como concluído
    [Tags]    Marcar ToDo como concluído
    E tenho um item previamente cadastrado, que não foi completado
    Quando ele for clicado
    Então será marcado como completado

Deve cadastrar n ToDos com sucesso
    [Documentation]    Verifica se é possível cadastrar n ToDos com sucesso
    [Tags]    Adicionar n ToDos
    Quando adiciono "5" ToDos
    Então será criado 5 novos ToDos

