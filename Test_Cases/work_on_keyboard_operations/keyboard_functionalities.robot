*** Settings ***
Library    SeleniumLibrary
Library    utilities.driver
Resource           Resources/screenshot_keywords.robot

Test Setup        Run Keywords
...               Install Web Driver
...               Open Browser In Fullscreen And Open TheTestingWorld URL
Test Teardown     Close Browser

*** Variables ***
${DRIVER}
${url}          https://www.thetestingworld.com
${browser}      Chrome         # Firefox
${path}         Test_Cases/work_on_keyboard_operations/screenshots

*** Test Cases ***
TC_01 Key Press With Alphanumeric Special Character
    Click Link    xpath://a[text()='Quick Demo']
    Press Keys    name:wdform_1_element_first2    HeLlO
    Take Screenshot    ${path}    entered_username_1

TC_02 Key Press With Other Keys
    Click Link    xpath://a[text()='Quick Demo']
    Input Text    name:wdform_1_element_first2    HiMaNsHu
    Take Screenshot    ${path}    entered_username_2
    Input Text    id:wdform_2_element2    abcd@gmail.com
    Take Screenshot    ${path}    entered_email_2
    Open Courses Or Training Dropdown And Select Course    Security Testing
    Take Screenshot    ${path}    course_Selected_2
    Press Keys    xpath://button[@type='button']    \\13         # '\\' used for entering ASCII value
    Take Screenshot    ${path}    enter_key_pressed

*** Keywords ***
Open Browser In Fullscreen And Open TheTestingWorld URL
    Open Browser    ${URL}    ${Browser}
#    Open Browser    ${URL}    ${Browser}    executable_path=${DRIVER}
    Maximize Browser Window

Open Courses Or Training Dropdown And Select Course
    [Arguments]    ${course}
#    Click Element    xpath://select[@name='wdform_5_element2']    # using xpath
    Click Element    css:[name='wdform_5_element2']     # using css
    Select Course    ${course}

Select Course
    [Arguments]    ${course}
    [Documentation]   Keyword for clicking Courses Or Training dropdown menu.
    Click Element    xpath://option[@value='${course}']
