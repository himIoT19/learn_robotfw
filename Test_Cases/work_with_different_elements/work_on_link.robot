*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Firefox       #Chrome
${URL}        http://www.thetestingworld.com/testings

*** Test Cases ***
Open The Link
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    2
    Click Link    xpath://a[text()='Read Detail']
    Sleep    2
    Close Browser
