*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://demowebshop.tricentis.com/register

*** Test Cases ***

Testing | selenium timeout 
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    ${time}=   get selenium timeout 
    log to console  ${time}

    set selenium timeout      10 seconds  
    wait until page contains    Register        # default is 5 seconds

    select radio button     Gender      M
    input text      name:FirstName      David
    input text      name:LastName      David
    input text      name:Email      abc@gmail.com
    input text      name:Password      1234
    input text      name:ConfirmPassword      1234
    close browser  


*** Keywords ***
