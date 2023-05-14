*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Variables ***
${sekcja}    History

*** Keywords ***
Verify Section Header
    ${sekcja_aktualna}    Get Text    xpath=//*[@id="${sekcja}"]
    Should Be Equal As Strings    ${sekcja_aktualna}    ${sekcja}

*** Test Cases ***
Verify Section
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Verify Section Header
    Close Browser