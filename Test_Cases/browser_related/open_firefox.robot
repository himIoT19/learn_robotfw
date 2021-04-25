*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Firefox
${URL}        http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}
    Sleep    1
    Maximize Browser Window
    Sleep    1
    Log to console      Test Case Successfully Passed.
    Close Browser
