*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${dir}    ${EXECDIR}

*** Keywords ***
Take Screenshot
    [Arguments]    ${path}    ${num}
    Capture Page Screenshot    ${dir}/${path}/${num}.png