*** Settings ***
Library    Remote    ${SERVER}:${PORT}/

*** Variables ***
${SERVER}  http://127.0.0.1
${PORT}    8270
${encrypted}    crypt:KjFtpeY8wJqKhWnmxvReVPgYD5hLuKlU1MHh5QyUsHuu6KvtNR3FTg2CWtQsWA209gWMQtrIZnkh6Xlgkrsgz+hlCayM

*** Test Cases ***
Compare secret value
    ${decrypted}    Get Decrypted Text    ${encrypted}
    Log    ${decrypted}
    Should Be Equal As Strings    ${decrypted}    Super_secret_passwrod