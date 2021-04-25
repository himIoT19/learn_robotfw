*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}          Firefox       #Chrome
${URL}              http://www.thetestingworld.com/testings
${iv_male}          1
${iv_female}        2
${css_sex}          name:sex
${male_gender}      Male
${female_gender}    Female

*** Test Cases ***
Select Gender Male By Index
    [Documentation]    Selects gender 'Male' from dropdown using 'Index'
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Sleep    2
    Select From List By Index    ${css_sex}    ${iv_male}
    Log to console    Gender Selected: ${male_gender}
    Sleep    2

Select Gender Female By Value
    [Documentation]    Selects gender 'Female' from dropdown using 'Value'
    Select From List By Value    ${css_sex}    ${iv_female}
    Log to console    Gender Selected: ${female_gender}
    Sleep    2

Select Gender Male By Label
    [Documentation]    Selects gender 'Male' from dropdown using 'Label'
    Select From List By Label    ${css_sex}    ${male_gender}
    Log to console    Gender Selected: ${male_gender}
    Sleep    2
    Close Browser