# Napisz test case do zweryfikowania czy dowolny link istnieje na stronie Robot Framework na Wikipedii, 
# a jesli nie to przejdz do glownej strony Wikipedii 
# HINT: do przekierowania strony uzyj polecenia Go To ${link}

*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers


*** Variables ***
${link}    Nokia Networks

*** Keywords ***
Verify Link and Go Main Page
    ${has_link}    Run Keyword And Return Status    Page Should Contain Element    link=${link}
    Run Keyword If    ${has_link}
    ...    Log    Link Found: ${link}
    ...  ELSE
    ...    Go To    https://en.wikipedia.org/wiki/Main_Page


*** Test Cases ***
Verify Link
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    Verify Link and Go Main Page
    Close Browser