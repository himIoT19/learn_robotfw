*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Firefox       #Chrome
${URL}        http://www.thetestingworld.com/testings

*** Test Cases ***
Select The Checkbox
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    2
    Select Checkbox    name:terms
    Sleep    2
    Close Browser
