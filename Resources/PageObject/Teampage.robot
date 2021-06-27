*** Settings ***
Documentation    common keywords
Library    SeleniumLibrary

*** Variables ***
${TEAM_BUTTON} =   xpath://*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
${TEAM_INFO} =     //*[@id="team"]/div/div[1]/div/h2

*** Keywords ***
click on the Team button
    sleep   4s
    click element    ${TEAM_BUTTON}

verify team info displayed
    sleep   5s
    wait until page contains element    ${TEAM_INFO}
