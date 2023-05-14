*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Test Cases ***
Verify Image
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Element Should Be Visible    xpath=//*[@id="mw-content-text"]/div[1]/table[2]/tbody/tr[1]/td/a/img
    Close Browser

Verify List
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Element Should Be Visible    xpath=//*[@id="mw-content-text"]/div[1]/ul[1]
    Close Browser

Verify Element on a List
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Element Should Contain    xpath=//*[@id="mw-content-text"]/div[1]/ul[1]/li    Acceptance testing
    Close Browser