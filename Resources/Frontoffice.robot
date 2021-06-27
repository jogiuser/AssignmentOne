*** Settings ***
Documentation    common keywords
Library    SeleniumLibrary
Resource    ../Resources/PageObject/Contact.robot
Resource    ../Resources/PageObject/LandingPage.robot
Resource    ../DataManager/InputData.robot




*** Keywords ***
Load forntoffice the URL
    go to     ${input.url}

verify forntoffice is loaded
    LandingPage.verify landing page

Navigate to Contact by clicking button
    Contact.click on the Contact button
    contact.verify contact us displayed

input user details in contact us form and send message
    [Arguments]    ${User_Data}
    Contact.inuput user details in contact us   ${User_Data}
    Contact.click on send message

verify message is sent
    ${Status} =    Contact.verify message sent
    [Return]    ${Status}

Test multiple contact details
    [Arguments]    ${User_Data}
#    Load forntoffice the URL
#    verify forntoffice is loaded
#    navigate to contact by clicking button
    input user details in contact us form and send message  ${User_Data}
    ${status} =     verify message is sent
    should be equal   ${status}     Sucess