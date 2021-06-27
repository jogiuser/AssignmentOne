*** Settings ***
Documentation    this first script setting
Library    SeleniumLibrary
Resource    ../Resources/Appintest.robot
Resource    ../Resources/Common.robot

Test Setup      Common.Begin Web Test
Test Teardown      Common.end web test


*** Variables ***
&{input}    url=http://www.robotframeworktutorial.com/front-office/    browser=gc   URL1=https://google.com
#${URL}      http://www.robotframeworktutorial.com/front-office/
#${browser}      gc
#${URL1}      https://google.com
##robot -d Result -v URL:"https://yahoo.com" -v URL1:"https://filpkart.com"  Tests/Amazon.robot


*** Test Cases ***
Test Case one
    [Documentation]    validating if we are able to open URL and navigate to correct page.
    Appintest.Load the URL
    appintest.verify app is loaded
    appintest.click on team option
    appintest.verify team info

