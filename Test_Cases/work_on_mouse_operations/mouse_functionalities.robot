*** Settings ***
Library    SeleniumLibrary
Library    utilities.driver

Resource           Resources/screenshot_keywords.robot

Suite Setup    Install Web Driver    ${Browser}

Test Setup        Open Browser In Fullscreen And Open TheTestingWorld URL
Test Teardown     Close Browser

*** Variables ***
${url}          http://www.thetestingworld.com
${DRIVER}
${browser}    Chrome        # Chrome
${path}         Test_Cases/work_on_mouse_operations/screenshots

*** Test Cases ***
TC_01 Open Context Menu
    Open Context Menu    xpath://span[contains(text(), 'VIDEOS')]
    Sleep    2 seconds
    Take Screenshot    ${path}    context_menu

TC_02 Double Click
    Double Click Element    xpath://span[contains(text(), 'Next')]
    Sleep    2 seconds
    Take Screenshot    ${path}    double_clcik

TC_03 Mouse Down And Mouse Up
    Mouse Down    xpath://span[contains(text(), 'Next')]
    Sleep    2 seconds
    Take Screenshot    ${path}    mouse_down
    Mouse Up    xpath://span[contains(text(), 'Next')]
    Sleep    2 seconds
    Take Screenshot    ${path}    mouse_up

TC_04 Mouse Over
    [Documentation]    Simulates hovering the mouse over the element
    Mouse Over    xpath://span[contains(text(), 'VIDEOS')]
    Sleep    2 seconds
    Take Screenshot    ${path}    mouse_over

*** Keywords ***
Open Browser In Fullscreen And Open TheTestingWorld URL
    Open Browser    ${URL}    ${Browser}    executable_path=${DRIVER}
    Maximize Browser Window