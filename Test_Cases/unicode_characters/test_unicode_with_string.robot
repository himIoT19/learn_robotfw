*** Settings ***
Documentation    Test Unicode With String

Library     Test_Cases.unicode_characters.json_file_functionalities

*** Variables ***
#&{device}    name=Yeti X WOW® Edition

*** Test Cases ***
Test Unicode With String
    Print Device Name


*** Keywords ***
Print Device Name
    ${device_name}    Get Name
    Log to console    \nDevice: ${device_name}