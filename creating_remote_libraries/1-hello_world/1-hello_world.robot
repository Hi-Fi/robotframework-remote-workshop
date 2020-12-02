*** Settings ***
Library    Remote    ${SERVER}:${PORT}/       WITH NAME    RemoteLibraryDemo

*** Variables ***
${SERVER}  http://127.0.0.1
${PORT}    8270

*** Test Cases ***
Hello Word
    [Template]    Test Hello World
    ${EMPTY}    Hello world
    remote      Hello remote
    localhost    Hello localhost

*** Keywords ***
Test Hello World
    [Arguments]    ${name}    ${expected}
    ${response}    Hello    ${name}
    Should Be Equal As Strings    ${response}    ${expected}
