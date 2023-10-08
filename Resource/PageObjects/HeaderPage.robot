*** Settings ***
Library    SeleniumLibrary
*** Variables ***
#${search_text}   mobile
#@{search_text}   mobile    robot    book
#&{search_text}    key1=mobile    key2=robot


*** Keywords ***
Input Search Text and Click Search
    [Arguments]    ${search_text}
    Input Text    xpath://*[@id="gh-ac"]    ${search_text}
    Press Keys    id:gh-btn     [Return]

Click on Advanced Search Link
    Click Element    id: gh-as-a