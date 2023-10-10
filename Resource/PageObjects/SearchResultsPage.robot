*** Settings ***
Library    SeleniumLibrary
Resource    ./HeaderPage.robot
Variables    ../Webelements.py
*** Variables ***
${search_result} =    results for
*** Keywords ***
Verify Search Result
    [Arguments]    ${search_text}
    Page Should Contain    ${search_result}    ${search_text}
Select Product Condition
    Mouse Over    SearchPageConditionButton
    Click Element    ${SearchPageConditionButton}
    Click Element    ${SearchPageNewCheckbox}
Verify filter result
    Element should contain  ${searchpagecontainsnew}
Select Product
    Click Element    ${searchpageselectproduct}