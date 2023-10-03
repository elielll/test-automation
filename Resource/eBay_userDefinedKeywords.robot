*** Settings ***
Library    SeleniumLibrary
*** Keywords ***

Verify test process
    Input Text    xpath://*[@id="gh-ac"]      mobile
    Press Keys    id:gh-btn     [Return]
    Page Should Contain    results for mobile
Filter result by condition
    Mouse Over    xpath=//button[contains(@class, 'fake-menu-button__button') and .//span[text()='Condition']]
    Click Element    xpath=//button[contains(@class, 'fake-menu-button__button') and .//span[text()='Condition']]
    Click Element    //*[@id="s0-53-17-5-4[1]-72[1]-19-content-menu"]/li[2]/a/span
Verify filter result
    Element should contain  //*[@id="s0-53-17-6-3-4[0]-3-2-1-list"]/li[1]/div/a    New
