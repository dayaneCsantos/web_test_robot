*** Settings ***
Resource    ../index.robot
*** Variables ***
${URL}    https://todomvc.com/examples/react/dist/

*** Keywords ***

Dado que estou no site todomvc
    Open Browser    url=${URL}    browser=Chrome