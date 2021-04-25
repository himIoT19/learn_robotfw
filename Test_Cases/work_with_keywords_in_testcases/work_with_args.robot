*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}     Chrome       # Chrome    # Firefox
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
    Enter Username Email And Password    ${username}    ${email}    ${password}
    Sleep   2
    Close Browser

*** Keywords ***
Enter Username Email And Password
    [Documentation]    Enter username, email, and password
    [Arguments]    ${user_name}    ${mail_id}    ${pswd}
    Input Text    ${css_username}    ${user_name}
    Log to console    \nUsername: ${user_name}
    Sleep   2
    Input Text    ${css_email}    ${mail_id}
    Log to console    Email: ${mail_id}
    Sleep   2
    Input Text    ${css_password}    ${pswd}
    Log to console    Username: ${pswd}