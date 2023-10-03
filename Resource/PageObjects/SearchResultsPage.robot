*** Settings ***
Library    SeleniumLibrary
Resource    ./HeaderPage.robot
*** Variables ***
${search_result} =    results for
*** Keywords ***
Verify Search Result
    Page Should Contain    ${search_result}    ${search_text}
Select Product Condition
    Mouse Over    xpath=//button[contains(@class, 'fake-menu-button__button') and .//span[text()='Condition']]
    Click Element    xpath=//button[contains(@class, 'fake-menu-button__button') and .//span[text()='Condition']]
    Click Element    //*[@id="s0-53-17-5-4[1]-72[1]-19-content-menu"]/li[2]/a/span
Verify filter result
    Element should contain  //*[@id="s0-53-17-6-3-4[0]-3-2-1-list"]/li[1]/div/a    New
Select Product
    Click Element    //*[@id="item5bdf57d897"]/div/div[2]/a/div/span