*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}          Firefox       #Chrome
${URL}              https://www.facebook.com/
${email}            tewarihimanshu62@gmail.com
${password}         123QWERTY
${login_button}     //button[@type='submit']
${show_password}    //input[@id='pass']/parent::div/parent::div/following-sibling::div/child::a/child::div/child::div

*** Test Cases ***
Login To Facebook
    [Documentation]    Open the browser, open the Facebook URL, enter user e-mail and password,
    ...                show password, close the browser.
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    2
    Input Text    id:email    ${email}
    Sleep    2
    Input Text    id:pass    ${password}
    Sleep    2
    Click Element    xpath:${show_password}
    Sleep    2
    Click Button    xpath:${login_button}
    Sleep    2
    Close Browser
