*** Settings ***
Library    SeleniumLibrary
Library    utilities.driver

Suite Setup    Install Web Driver    ${Browser}

*** Variables ***
${DRIVER}
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
    ${speed}=    Get Selenium Speed
    Log to console    \nSelenium speed: ${speed}
    Open Browser    ${URL}    ${Browser}
#    Open Browser    ${URL}    ${Browser}    executable_path=${DRIVER}
    Maximize Browser Window
    Set Selenium Speed    1 seconds
    Enter Username Email And Password    ${username}    ${email}    ${password}
    Close Browser
    ${speed}=    Get Selenium Speed
    Log to console    Selenium speed: ${speed}

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