*** Settings ***
Library    RequestsLibrary


*** Test Cases ***
Get Users
    GET    https://reqres.in/api/users

Get Users Status
    ${response}    GET    https://reqres.in/api/users
    Should Be Equal As Integers    ${response.status_code}    200

Get Respose Time
    ${response}    GET    https://reqres.in/api/users
    IF ${response.elapsed.total_seconds()} < 2
        Log    Response Time was: ${response.elapsed.total_seconds()}
    ELSEIF ${response.elapsed.total_seconds()} >= 2
        Log    Response Time was: ${response.elapsed.total_seconds()}    WARN

Create Users
    ${data}    Create Dictionary    username=Joe    password=Tester123.    email=Joe.Biden@reqres.in
    ${response}    POST    https://reqres.in/api/register    json=${data}
    Should Be Equal As Strings    ${response.json()['name']}    Joe

Get User With ID 1
    ${response}    GET    https://reqres.in/api/users/1
    Should Be Equal As Strings    ${response.data.name}    george.bluth@reqres.in