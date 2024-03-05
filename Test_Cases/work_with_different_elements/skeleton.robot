*** Settings ***
Library    SeleniumLibrary
Library    ../../utilities/driver.py

Suite Setup    Install Web Driver    browser=${Browser}
Suite Teardown    Close Browser

*** Variables ***
${Browser}    Firefox       #Chrome
${URL}        http://www.thetestingworld.com/testings
${DRIVER}

*** Test Cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}    executable_path=${DRIVER}
    Maximize Browser Window
