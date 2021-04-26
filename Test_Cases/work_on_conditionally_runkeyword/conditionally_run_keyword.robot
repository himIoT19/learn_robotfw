*** Settings ***

Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
Test Run Keyword
    ${Key_Var}=    Set Variable    Log to console
    Run Keyword    ${Key_Var}    thehimu1990@gmail.com

Test Conditionally Run Keyword For YES
    ${var}=    Set Variable    YES
    Run Keyword If    '${var}'=='YES'    Log to console    Value Found
    Run Keyword If    '${var}'=='NO'    Log to console    Value Not Found

Test Conditionally Run Keyword For NO
    ${var}=    Set Variable    NO
    Run Keyword If    '${var}'=='YES'    Log to console    Value Found
    Run Keyword If    '${var}'=='NO'    Log to console    Value Not Found

*** Keywords ***