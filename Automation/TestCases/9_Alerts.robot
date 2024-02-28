*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://testautomationpractice.blogspot.com/


*** Test Cases ***

Testing | Alerts
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    click element       //button[contains(text(),'Alert')]          # open alert
    sleep   3
    # handle alert accept
    # handle alert dismiss
    # handle alert leave
    alert should be present     I am an alert box!

    close browser


*** Keywords ***
