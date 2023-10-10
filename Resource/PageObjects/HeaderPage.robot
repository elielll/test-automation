*** Settings ***
Library    SeleniumLibrary
Variables    ../Webelements.py
*** Variables ***
#${search_text}   mobile
#@{search_text}   mobile    robot    book
#&{search_text}    key1=mobile    key2=robot

*** Keywords ***
Input Search Text and Click Search
    [Arguments]    ${search_text}
    Input Text    ${HomePageSearchBox}    ${search_text}
    Press Keys    ${HomePageSearchButton}     [Return]

Click on Advanced Search Link
    Click Element    ${HomePageAdvancedSearchLink}