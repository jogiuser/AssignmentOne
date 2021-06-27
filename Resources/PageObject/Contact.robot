*** Settings ***
Documentation    common keywords
Library    SeleniumLibrary
Resource    ../DataManager/InputData.robot

*** Variables ***
${CONTACT_BUTTON} =   Contact
${CONTACT_US} =     //h2[text()="Contact Us"]
${SEND_MESSAGE_BUTTON} =    Send Message
${SUCESS} =     Your message has been sent.

*** Keywords ***
click on the Contact button
    sleep   4s
    click link    ${CONTACT_BUTTON}

verify Contact us displayed
    sleep   5s
    wait until page contains        Contact Us

inuput user details in contact us
    [Arguments]    ${User_Data}
    input text    id=name   ${User_Data.name}
    input text    id=email  ${User_Data.email}
    input text    id=phone  ${User_Data.phone}
    input text    id=message    ${User_Data.message}

click on send message
    click button    ${SEND_MESSAGE_BUTTON}

verify message sent

    wait until page contains    ${SUCESS}
    [Return]    Sucess

