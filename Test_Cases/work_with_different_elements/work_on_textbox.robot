*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Firefox       #Chrome
${URL}        http://www.thetestingworld.com/testings

*** Test Cases ***
Enter Text In Textbox
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Input Text    name:fld_username    Himanshu Tewari
    Sleep   2
    Input Text    xpath://input[@name='fld_email']    thehimu1990@gmail.com
    Sleep   2
    Clear Element Text    name:fld_username
    Sleep   2
    Close Browser
