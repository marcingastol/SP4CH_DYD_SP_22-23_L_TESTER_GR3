# Napisz test case do zweryfikowania czy dana strona moze byc wyswietlona w innym jezyku (dowolnym),
# a jesli jest dostepna to wejdz na nia i zweryfikuj czy tytul strony sie zmienil 
# (powinien sie zmienic ze wzgledu na zmiane jezyka) stronie Robot Framework na Wikipedii

*** Settings ***
Library    SeleniumLibrary
Library    ScreenCapLibrary

Test Setup    Start Video Recording
Test Teardown    Stop Video Recording

Suite Teardown    Close All Browsers

*** Test Cases ***
Verify Language
    Open Browser    https://en.wikipedia.org/wiki/Robot_Framework    chrome
    ${language_status}    Run Keyword And Return Status    Page Should Contain Element    xpath=//*[@id="p-lang-btn-checkbox"]
    Run Keyword If    ${language_status}    Click Element    xpath=//*[@id="p-lang-btn-checkbox"]
    Run Keyword If    ${language_status}    Sleep    3s
    ${deutsch}    Run Keyword And Return Status   Element Should Be Visible    xpath=/html/body/div[1]/div[2]/div[8]/div/ul/li[3]/a
    Run Keyword If    ${deutsch}    Click Element    xpath=/html/body/div[1]/div[2]/div[8]/div/ul/li[3]/a
    Run Keyword If    ${deutsch}    Sleep    3s
    ${current_page}    Get Location
    Should Contain    ${current_page}    de