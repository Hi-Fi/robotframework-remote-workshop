*** Settings ***
Library    Remote    ${SERVER}:${PORT}/db       WITH NAME    RemoteLibraryDemo

*** Variables ***
${SERVER}  http://127.0.0.1
${PORT}    8270

*** Test Cases ***
Try remote database
    Connect To Database    org.h2.Driver    jdbc:h2:mem:robotTest;DB_CLOSE_DELAY=-1    sa    ${EMPTY}
    Execute SQL    CREATE TABLE DemoTable (Id INT NOT NULL, Name VARCHAR(255))
    Table Must Exist    DEMOTABLE
    Table Must Be Empty    DEMOTABLE
