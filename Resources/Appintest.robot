*** Settings ***
Documentation    common keywords
Library    SeleniumLibrary
Resource    ../Resources/PageObject/Teampage.robot
Resource    ../Resources/PageObject/LandingPage.robot



*** Keywords ***
Load the URL
    go to     ${input.url}

verify app is loaded
    LandingPage.verify landing page

click on Team option
    teampage.click on the team button

verify team info
    teampage.verify team info displayed
