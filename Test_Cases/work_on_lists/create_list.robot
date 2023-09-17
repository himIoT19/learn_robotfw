*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Variables ***
${list_var}    [1, 'Banana', '433', 'Guava']    # Used List -> as a string
@{list_var_2}    ${1}    Banana    Guava    ${3.141}    # Proper list variable

*** Test Cases ***
Create List In Robot Framework
    [Documentation]    Create a list in robot framework and do some actions on the list
    ...                Using biult-in keywords
    ...                Create List, Get Length, Get From List
    @{list_rfw}    Create List    Hello    ${22}    ${23.23}    World    Abcd1234
    ${len_list_rfw}    Get Length    ${list_rfw}
    Log to console    \nlength of list: ${len_list_rfw}
    ${list_data}=    Get from list    ${list_rfw}    3
    Log to console    ${list_data}
    @{rand_list}    Evaluate    ${list_var}
    Log to console    \nList: ${rand_list}
    Log to console    \nList: ${list_var_2}


*** Keywords ***