*** Settings ***
Library    ex10

*** Keywords ***
Echo Hello
    Log    Hello World from Keyword

*** Test Cases ***
Use Keywords and external Library
    Echo Hello
    Hello World