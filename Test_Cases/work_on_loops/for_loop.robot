*** Settings ***

Library    SeleniumLibrary
Library    Collections

*** Variables ***

*** Test Cases ***
Create List
    @{list_rfw}    Create List    Hello    ${22}    ${23.23}    World    Abcd1234
    Set Global Variable    ${list_rfw}
    Log to console    Created list: ${list_rfw}

For Loop Using Range Type One Syntax
    FOR    ${i}    IN RANGE    1    10      # Lat value is ignored, eg: 10
        Log to console    ${i}
    END

#For Loop Using Range Type Two Syntax
#    :FOR    ${i}    IN RANGE    1    10      # Lat value is ignored, eg: 10
#    \    Log to console    ${i}

For Loop Using List Type One Syntax
    FOR    ${i}    IN    @{list_rfw}
        Log to console    ${i}
    END

#For Loop Using List Type Two Syntax
#    :FOR    ${i}    IN    @{list_rfw}
#    \    Log to console    ${i}

*** Keywords ***