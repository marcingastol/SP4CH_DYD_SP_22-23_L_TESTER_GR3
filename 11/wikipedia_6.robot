*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Variables ***
${tytul_strony}    Robot Framework - Wikipedia

*** Keywords ***
Check Page Title
    ${tytul_strony_aktualny}    Get Title
    Should Be Equal As Strings    ${tytul_strony_aktualny}    ${tytul_strony}

*** Test Cases ***
Verify Page Title
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Check Page Title
    Close Browser