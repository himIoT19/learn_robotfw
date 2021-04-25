*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Firefox       #Chrome
${URL}        http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Close Browser
