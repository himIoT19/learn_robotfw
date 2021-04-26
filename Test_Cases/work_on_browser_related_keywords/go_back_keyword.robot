*** Settings ***

Library     SeleniumLibrary
Resource    Resources/screenhot_keywords.robot

Suite Teardown    Close Browser

*** Variables ***
${browser}    Chrome
${url_1}      http://www.thetestingworld.com
${url_2}      https://www.facebook.com
${path}       Test_Cases/work_on_browser_related_keywords/go_back_screenshots

*** Test Cases ***
Open Two Different URLs OBO And Go Back To First Website
    Open Browser    ${url_1}    ${browser}
    Maximize Browser Window
    Take Screenshot    ${path}    1
    Go To    ${url_2}
    Take Screenshot    ${path}    2
    Go Back
    Take Screenshot    ${path}    3
