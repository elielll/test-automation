*** Settings ***

*** Test Cases ***
Argument demo keyword test
    Argument demo keyword   argument 1  argument 2

Argument demo keyword test2
    Argument demo keyword   argument 3  argument 4

*** Keywords ***
Argument demo keyword
    [Arguments]    ${arg1}    ${arg2}
    Log    ${arg1}
    Log    ${arg2}