*** Settings ***
Resource    ../index.robot

*** Variables ***
${CAMPO_INPUT}    id:todo-input

*** Keywords ***

Quando adiciono "${todo}"
    Click Element    ${CAMPO_INPUT}
    Input Password    ${CAMPO_INPUT}    ${todo}
    Press Keys    ${CAMPO_INPUT}    ENTER

Então será criado o item "${todo}" na lista
    Element Should Be Visible    //ul[contains(li, '${todo}')]
    Element Text Should Be    //span[@class='todo-count']    1 item left!


E tenho um item previamente cadastrado, que não foi completado
    Quando adiciono "Retirar o lixo"

Quando ele for clicado
    Click Element    //input[@type='checkbox'][@data-testid='todo-item-toggle']

Então será marcado como completado
    Element Should Be Visible    //li[@class='completed']
    Element Text Should Be    //span[@class='todo-count']    0 items left!

Quando adiciono "${counter}" ToDos
    FOR    ${index}    IN RANGE    ${counter}
        Quando adiciono "ToDo ${index + 1}"
    END

Então será criado 5 novos ToDos
    Element Text Should Be    //span[@class='todo-count']    5 items left!

Então o ToDo será atualizado para "${ToDo}"
    Textfield Should Contain    //label[@data-testid='todo-item-label']    Ler e estudar