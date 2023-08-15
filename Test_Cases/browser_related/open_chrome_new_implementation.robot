*** Settings ***
Library    SeleniumLibrary
Library    utilities.driver

Suite Setup    Install Web Driver    ${Browser}
#Suite Setup    Get Driver Path

*** Variables ***
${Browser}    chrome
${URL}        https://www.thetestingworld.com/testings
${DRIVER}

*** Test Cases ***
Robot First Test Case
#    Open Browser    ${URL}    ${Browser}    executable_path=${WEB_DRIVER}
    Open Browser    ${URL}    ${Browser}    executable_path=${DRIVER}
    Sleep    1
    Maximize Browser Window
    Sleep    1
    Log to console      ${\n}Test Case Successfully Passed.
    Close Browser


*** Keywords ***
#Get Driver Path
#    ${DRIVER}=    Install Web Driver    ${Browser}
#    Set Global Variable    ${WEB_DRIVER}    ${DRIVER}
