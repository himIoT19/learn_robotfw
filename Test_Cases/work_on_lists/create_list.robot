*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
Create List In Robot Framework
    @{list_rfw}    Create List    Hello    22    23.23    World    Abcd1234
    ${len_list_rfw}    Get Length    ${list_rfw}
    Log to console    \nlength of list: ${len_list_rfw}
    ${list_data}=    Get from list    ${list_rfw}    3
    Log to console    ${list_data}



*** Keywords ***