*** Settings ***
Library    SeleniumLibrary
Resource           Resources/screenhot_keywords.robot

Suite Setup        Open Broser In Fullscreen And Open TheTestingWorld URL
Suite Teardown     Close Browser

*** Variables ***
${url}          http://www.thetestingworld.com
${browser}      Firefox         # Chrome
${path}         Test_Cases/work_on_executing_javascript/screenshots


*** Test Cases ***
Browser Scroll Functionality
    Take Screenshot    ${path}    1
    Execute JavaScript    window.scrollTo(0, 1000)
    Take Screenshot    ${path}    2

*** Keywords ***
Open Broser In Fullscreen And Open TheTestingWorld URL
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window