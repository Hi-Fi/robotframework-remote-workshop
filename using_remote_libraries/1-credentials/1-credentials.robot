*** Settings ***
Library    Remote    ${SERVER}:${PORT}/       WITH NAME    RemoteLibraryDemo

*** Variables ***
${SERVER}  http://127.0.0.1
${PORT}    8270

*** Test Cases ***
Authentication Test
    [Template]    Test Authentication
    ${EMPTY}    ${EMPTY}    test
    abc    abc    abc

*** Keywords ***
Test Authentication
    [Arguments]    ${username}    ${password}    ${expected}
    ${response}    Authenticate    ${username}    ${password}
    Should Contain    ${response}    ${expected}
