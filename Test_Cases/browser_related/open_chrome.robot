*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${URL}        http://www.thetestingworld.com/testings

*** Test Cases ***
Robot First Test Case
    Open Browser    ${URL}    ${Browser}    # driver must be in path/or in scripts inside venv
    Sleep    1
    Maximize Browser Window
    Sleep    1
    Log to console      ${\n}Test Case Successfully Passed.
    Close Browser
