*** Settings ***
Library    Remote    ${SERVER}:${PORT}/       WITH NAME    FileRemoteLibraryDemo
Library    OperatingSystem

*** Variables ***
${SERVER}  http://127.0.0.1
${PORT}    8270

*** Test Cases ***
Hello Word
    ${content}    Get Time
    Create File    local_file.txt    ${content}
    ${file}    Get Binary File    local_file.txt
    Send File    remote_file.txt    ${file}
    ${remote file}    Read File    remote_file.txt
    Should Be Equal As Strings    ${remote file}    ${content}
