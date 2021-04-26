*** Settings ***
Library            SeleniumLibrary
Resource           Resources/screenhot_keywords.robot
Suite Setup        Open Broser In Fullscreen And Open TheTestingWorld URL
Suite Teardown     Close Browser

*** Variables ***
${Browser}          Chrome       # Chrome    # Firefox
${URL}              http://www.thetestingworld.com/testings
${username}         him9290
${email}            thehimu1990@gmail.com
${password}         123456
${path}             Test_Cases/work_on_screenshot/screenshots

# CSS Selectors
${css_username}    name:fld_username
${css_email}       name:fld_email
${css_password}    name:fld_password

*** Test Cases ***
Login to TheTestingWorld Using Execution Speed And Timeout
    Take Screenshot    ${path}    1
    Enter Username Email And Password    ${username}    ${email}    ${password}
    Log to console    Execution Directory: ${EXECDIR}

*** Keywords ***
Enter Username Email And Password
    [Documentation]    Enter username, email, and password
    [Arguments]    ${user_name}    ${mail_id}    ${pswd}
    Input Text    ${css_username}    ${user_name}
    Take Screenshot    ${path}    2
    Log to console    ${\n}Username: ${user_name}
    Input Text    ${css_email}    ${mail_id}
    Take Screenshot    ${path}    3
    Log to console    Email: ${mail_id}
    Input Text    ${css_password}    ${pswd}
    Take Screenshot    ${path}    4
    Log to console    Username: ${pswd}

Open Broser In Fullscreen And Open TheTestingWorld URL
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window