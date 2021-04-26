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
Login to TheTestingWorld Using Execution Speed And Timeout
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Set Selenium Timeout    20 seconds
    ${tm}=    Get Selenium Timeout
    Log to console    Timeout: ${tm}
    Wait Until Page Contains    Testingg
    Enter Username Email And Password    ${username}    ${email}    ${password}
    Close Browser

*** Keywords ***
Enter Username Email And Password
    [Documentation]    Enter username, email, and password
    [Arguments]    ${user_name}    ${mail_id}    ${pswd}
    Input Text    ${css_username}    ${user_name}
    Log to console    Username: ${user_name}
    Input Text    ${css_email}    ${mail_id}
    Log to console    Email: ${mail_id}
    Input Text    ${css_password}    ${pswd}
    Log to console    Username: ${pswd}