*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Frontoffice.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/Backoffice.robot
Resource    ../DataManager/InputData.robot

Test Setup          Common.Begin Web Test
Test Teardown       Common.End Web Test


*** Variables ***


*** Test Cases ***
test multiple contact details scenario
    [Tags]    Sanity
    [Template]  Frontoffice.Test multiple contact details
    ${User_Data}
    ${User_Data1}
    ${User_Data2}

contact us details sent
    Frontoffice.Load forntoffice the URL
    Frontoffice.verify forntoffice is loaded
    Frontoffice.navigate to contact by clicking button
    Frontoffice.input user details in contact us form and send message
    ${status} =     Frontoffice.verify message is sent
    should be equal   ${status}     sucess
    Backoffice.Load the URL
    Backoffice.verify backoffice is loaded



