*** Settings ***
Library    SeleniumLibrary
Resource           Resources/screenhot_keywords.robot

Test Setup        Open Broser In Fullscreen And Open TheTestingWorld URL
Test Teardown     Close Browser

*** Variables ***
${url}          http://www.thetestingworld.com
${browser}      Firefox         # Chrome
${path}         Test_Cases/work_on_mouse_operations/screenshots

*** Test Cases ***
TC_01 Open Context Menu
    Open Context Menu    xpath://span[contains(text(), 'VIDEOS')]
    Sleep    2 seconds
    Take Screenshot    ${path}    context_menu

TC_02 Double Click
    Double Click Element    xpath://a[text()='Login']
    Sleep    2 seconds
    Take Screenshot    ${path}    double_clcik

TC_03 Mouse Down And Mouse Up
    Mouse Down    xpath://a[text()='Login']
    Sleep    2 seconds
    Take Screenshot    ${path}    mouse_down
    Mouse Up    xpath://a[text()='Login']
    Sleep    2 seconds
    Take Screenshot    ${path}    mouse_up

TC_04 Mouse Over
    Mouse Over    xpath://span[contains(text(), 'VIDEOS')]
    Sleep    2 seconds
    Take Screenshot    ${path}    mouse_over

*** Keywords ***
Open Broser In Fullscreen And Open TheTestingWorld URL
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window