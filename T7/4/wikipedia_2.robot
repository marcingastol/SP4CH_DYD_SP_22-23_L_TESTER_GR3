*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Test Cases ***
Search Robot Framework
    Open Browser    https://en.wikipedia.org/wiki/Main_Page    chrome
    Input Text    name=search    Robot Framework
    Press Keys    name=search    RETURN
    Element Should Contain    xpath=//*[@id="firstHeading"]    Robot Framework
    Close Browser