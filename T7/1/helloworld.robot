*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Hello World
    Run    echo "Hello World" > hello_world.txt
    ${file} =    Get File    hello_world.txt
    Should Contain    ${file}    Byebye
