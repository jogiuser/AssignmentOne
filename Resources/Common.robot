*** Settings ***
Documentation    common keywords
Library    SeleniumLibrary
Resource    ../DataManager/InputData.robot
Resource    ../Resources/Frontoffice.robot



*** Variables ***
#${browser}      gc


*** Keywords ***
Begin Web Test
    open browser    about:blank     ${input.browser}
    maximize browser window
    Frontoffice.Load forntoffice the URL
    Frontoffice.verify forntoffice is loaded
    Frontoffice.Navigate to Contact by clicking button


End Web Test
    close browser