*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}     Firefox       # Chrome    # Firefox
${URL}         http://www.thetestingworld.com/testings
${username}    him9290
${email}       thehimu1990@gmail.com
${password}    123456

# CSS Selectors
${css_username}    name:fld_username
${css_email}       name:fld_email
${css_password}    name:fld_password

*** Test Cases ***
Login to TheTestingWorld
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    2
    Enter Username Email And Password
    Sleep   2
    Close Browser

*** Keywords ***
Enter Username Email And Password
    [Documentation]    Enter username, email, and password
    Input Text    ${css_username}    ${username}
    Log to console    \nUsername: ${username}
    Sleep   2
    Input Text    ${css_email}    ${email}
    Log to console    Email: ${email}
    Sleep   2
    Input Text    ${css_password}    ${password}
    Log to console    Username: ${password}