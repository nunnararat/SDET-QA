*** Settings ***
Library    PuppeteerLibrary
Test Teardown    Close All Browser
Suite Teardown    Close Puppeteer

*** Test Cases ***
Accept alert
    &{options} =    create dictionary   headless=${False}
    Open browser    http://127.0.0.1:7272/basic-html-elements.html   options=${options}
    Run Async Keywords
    ...    Handle Alert    ACCEPT    AND
    ...    Click Button    id=alert_confirm
    Click Element    id:get_ajax

Dismiss alert
    &{options} =    create dictionary   headless=${False}
    Open browser    http://127.0.0.1:7272/basic-html-elements.html   options=${options}
    Run Async Keywords
    ...    Handle Alert    DISMISS    AND
    ...    Click Button    id=alert_confirm
    Click Element    id:get_ajax