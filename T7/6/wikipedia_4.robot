*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Test Cases ***
Verify Section
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Element Should Be Visible    xpath=//*[@id="Description"]
    Close Browser

Verify Table
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Element Should Be Visible    xpath=//*[@id="mw-content-text"]/div[1]/table[2]
    Close Browser