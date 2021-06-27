*** Settings ***
Documentation    common keywords
Library    SeleniumLibrary

*** Variables ***
${Landing_Verification} =   xpath://*[@id="mainNav"]/div/div[1]/a
${BACK_Office_Page} =   RobotFrameworkTutorial.com Demo Admin Site

*** Keywords ***
verify landing page
    # TODO updated varaible
    wait until page contains element    ${Landing_Verification}

verify backoffice landing page
    wait until page contains    ${BACK_Office_Page}