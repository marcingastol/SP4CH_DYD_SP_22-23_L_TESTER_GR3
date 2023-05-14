*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Test Cases ***
Search Robot Framework in Google
    Open Browser    http://google.com    chrome
    Wait Until Element Is Visible    xpath=//*[@id="L2AGLb"]
    Click Button    xpath=//*[@id="L2AGLb"]
    Input Text    name=q    Robot Framework
    Press Keys    name=q    ENTER
    Page Should Contain    Byebye
    Close Window
