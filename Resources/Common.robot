*** Settings ***
Documentation    common keywords
Library    SeleniumLibrary
Resource    ../DataManager/InputData.robot



*** Variables ***
#${browser}      gc


*** Keywords ***
Begin Web Test
    open browser    about:blank     ${input.browser}
    maximize browser window

End Web Test
    close browser