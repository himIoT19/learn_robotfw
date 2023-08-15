*** Settings ***

Library     SeleniumLibrary
Library    utilities.driver

Resource    Resources/screenshot_keywords.robot

Suite Setup    Install Web Driver    ${Browser}

Suite Teardown    Close Browser

*** Variables ***
${DRIVER}
${browser}    Chrome
${url_1}      http://www.thetestingworld.com
${url_2}      https://www.facebook.com
${path}       Test_Cases/work_on_browser_related_keywords/get_location_screenshots

*** Test Cases ***
Open Two Different URLs OBO And Go Back To First Website And Get URL
    Open Browser    ${url_1}    ${browser}    executable_path=${DRIVER}
    Maximize Browser Window
    Take Screenshot    ${path}    1
    ${url_one}=    Get Location
    Log to console    ${\n}URL_ONE: ${url_one}
    Go To    ${url_2}
    Take Screenshot    ${path}    2
    ${url_two}=    Get Location
    Log to console    URL_TWO: ${url_two}
    Go Back
    Take Screenshot    ${path}    3
    ${url_back_one}=    Get Location
    Log to console    URL_BACK_ONE: ${url_back_one}