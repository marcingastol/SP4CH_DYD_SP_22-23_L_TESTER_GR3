# Napisz test case do zweryfikowania czy dowolny przycisk istnieje na stronie Robot Framework na Wikipedii, 
# a jesli nie to odswiez strone i sprobuj ponownie. Jesli przycisk po drugim sprawdzeniu nie istnieje, 
# zrob screenshot
# HINT: Refresh page - polecenie odswiezania strony
# Take Screenshot - polecenie wykoania zrzutu ekranu
# Run Keyword If - instrukcja warunkowa

*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Variables ***
${button}    xpath=//*[@id="__next"]/header/div/div/form/button

*** Keywords ***
Verify Button and Refresh Page
    ${button_content}    Get Text    ${button}
    Run Keyword If    '${button_content}' != 'SZUKAJ'    Go To    https://www.onet.pl/
    ${button_content}    Get Text    ${button}
    Run Keyword If    '${button_content}' == 'None'    Take Screenshot
    Should Not Be Equal As Strings    ${button_content}    None

*** Test Cases ***
Verify Button
    Open Browser    https://www.onet.pl/    chrome
    Verify Button and Refresh Page
    Close Browser