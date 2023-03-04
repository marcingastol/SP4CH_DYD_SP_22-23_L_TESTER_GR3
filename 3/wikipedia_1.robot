*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Test Cases ***
Verify Python Link
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Element Should Be Visible    link=Python
    Close Browser