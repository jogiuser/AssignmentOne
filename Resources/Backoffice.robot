*** Settings ***
Documentation    common keywords
Library    SeleniumLibrary
Resource    ../Resources/PageObject/LandingPage.robot
Resource    ../DataManager/InputData.robot




*** Keywords ***
Load the URL
    go to     ${input.backoffice}


verify backoffice is loaded
    LandingPage.verify backoffice landing page
