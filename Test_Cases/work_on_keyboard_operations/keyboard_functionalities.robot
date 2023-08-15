*** Settings ***
Library    SeleniumLibrary
Resource           Resources/screenshot_keywords.robot

Test Setup        Open Browser In Fullscreen And Open TheTestingWorld URL
Test Teardown     Close Browser

*** Variables ***
${url}          http://www.thetestingworld.com
${browser}      Chrome         # Firefox
${path}         Test_Cases/work_on_keyboard_operations/screenshots

*** Test Cases ***
TC_01 Key Press With Alphanumeric Special Character
    Click Link    xpath://a[text()='Login']
    Press Keys    name:username    HeLlO
    Take Screenshot    ${path}    entered_username_1

TC_02 Key Press With Other Keys
    Click Link    xpath://a[text()='Login']
    Input Text    name:username    HiMaNsHu
    Take Screenshot    ${path}    entered_username_2
    Press Keys    xpath://button[@type='submit']    \\13         # '\\' used for entering ASCII value
    Take Screenshot    ${path}    enter_key_pressed

*** Keywords ***
Open Browser In Fullscreen And Open TheTestingWorld URL
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window