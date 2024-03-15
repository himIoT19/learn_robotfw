*** Settings ***
Library    SeleniumLibrary
Library    utilities.driver
Resource           Resources/screenshot_keywords.robot

Suite Setup        Run Keywords
...                Install Web Driver
...                Open Browser In Fullscreen And Open TheTestingWorld URL
Suite Teardown     Close Browser

*** Variables ***
${DRIVER}
${url}          http://www.thetestingworld.com
${browser}      Chrome         # Chrome
${path}         Test_Cases/work_on_executing_javascript/screenshots


*** Test Cases ***
Browser Scroll Functionality
    Take Screenshot    ${path}    1
    Execute JavaScript    window.scrollTo(0, 1000)
    Take Screenshot    ${path}    2

*** Keywords ***
Open Browser In Fullscreen And Open TheTestingWorld URL
    Open Browser    ${URL}    ${Browser}
#    Open Browser    ${URL}    ${Browser}    executable_path=${DRIVER}
    Maximize Browser Window