*** Settings ***
Documentation    Basic search functionatily
Resource    ../../Resource/CommonFunctionality.robot
Resource    ../../Resource/PageObjects/HeaderPage.robot
Resource    ../../Resource/PageObjects/SearchResultsPage.robot
Resource    ../../Resource/PageObjects/LandingPage.robot
Resource    ../../Resource/PageObjects/ProductDetailsPage.robot

Test Setup       CommonFunctionality.Start test
Test Teardown    CommonFunctionality.Finnish test
*** Variables ***

*** Test Cases ***

#Test landing page functionality
#    LandingPage.Verify Landing Page Contains

Verify basic search functionality
    [Documentation]    This case verifies besic search functionatility
    [Tags]    Functional

    HeaderPage.Input Search Text And Click Search
    SearchResultsPage.Verify Search Result

#Verify advanced search fuctionality
#    HeaderPage.Click On Advanced Search Link

#Verify product details functionality
#    HeaderPage.Input Search Text And Click Search
#    SearchResultsPage.Select Product
#    sleep    3s
#    ProductDetailsPage.Verify Buy Button


