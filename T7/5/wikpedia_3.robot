*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Test Cases ***
Click Python Link
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Click Link    xpath=//a[contains(text(), 'Python')]
    Title Should Be    Python (programming language) - Wikipedia
    Close Browser