*** Settings ***
Library    PuppeteerLibrary
Test Teardown    Close All Browser
Suite Teardown    Close Puppeteer


*** Test Cases ***
Enable debug mode
    Enable Debug Mode    
    Open browser to test page    http://127.0.0.1:7272/login-form-example.html
    Input Text    id=exampleInputEmail1    demo@qahive.com
    Input Text    id=exampleInputPassword1    123456789

*** Keywords ***
Open browser to test page
    [Arguments]    ${url}
    ${HEADLESS}     Get variable value    ${HEADLESS}    ${False}
    &{options} =    create dictionary   headless=${HEADLESS}
    Open browser    ${url}   options=${options}