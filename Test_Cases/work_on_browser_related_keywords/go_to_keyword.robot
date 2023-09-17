*** Settings ***

Library     SeleniumLibrary
Library     utilities.driver
Resource    Resources/screenshot_keywords.robot

Suite Setup       Install Web Driver    ${browser}
Suite Teardown    Close Browser

*** Variables ***
${DRIVER}
${browser}    Chrome
${url_1}      http://www.thetestingworld.com
${url_2}      https://www.facebook.com
${path}       Test_Cases/work_on_browser_related_keywords/go_to_screenshots

*** Test Cases ***
Open Two Different URLs OBO
    Open Browser    ${url_1}    ${browser}    executable_path=${DRIVER}
    Maximize Browser Window
    Take Screenshot    ${path}    1
    Go To    ${url_2}
    Take Screenshot    ${path}    2
