*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Variables ***
${PRZEGLADARKA}    headlesschrome
${HEADLESS}    "headlesschrome" in "${PRZEGLADARKA}"

*** Test Cases ***
Search Robot Framework in Google
    Open Browser    http://google.com    ${PRZEGLADARKA}
    Run Keyword If    ${HEADLESS}    Wait Until Element Is Visible    xpath=//*[@id="L2AGLb"]
    Run Keyword If    ${HEADLESS}    Click Button    xpath=//*[@id="L2AGLb"]
    Input Text    name=q    Robot Framework
    Press Keys    name=q    ENTER
    Page Should Contain    Wikipedia
    Close Window
