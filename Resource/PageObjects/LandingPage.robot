*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Keywords ***
Verify Landing Page Contains
    Page Should Contain     Daily Deals

Select the shopping categories
    Click Element    //*[@id="mainContent"]/div[1]/ul/li[3]/a