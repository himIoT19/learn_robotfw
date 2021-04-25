*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Firefox       #Chrome
${URL}        http://www.thetestingworld.com/testings

*** Test Cases ***
Select The Radio Button
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Select Radio Button    add_type    office
    Sleep    2
    Close Browser
