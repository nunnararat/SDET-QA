*** Settings ***
Library    PuppeteerLibrary

*** Test Cases ***
Submit login form
    &{options} =    create dictionary   headless=${False}
    Open browser    http://127.0.0.1:7272/login-form-example.html   options=${options}
    Input Text    id=exampleInputEmail1    demo@qahive.com
    Input Text    id=exampleInputPassword1    123456789
    Click Element    id=exampleCheck1
    Run Async Keywords
    ...    Wait For New Window Open    AND
    ...    Click Element    css=button[type="submit"]
    Switch Window    NEW
    Wait Until Page Contains    Login succeeded
    Close Browser