*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://demowebshop.tricentis.com/register

*** Test Cases ***

Testing | selenium speed
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    ${spead}=   get selenium speed 
    log to console  ${spead}

    set selenium speed      2 seconds  
    select radio button     Gender      M
    input text      name:FirstName      David
    input text      name:LastName      David
    input text      name:Email      abc@gmail.com
    input text      name:Password      1234
    input text      name:ConfirmPassword      1234

    ${spead}=   get selenium speed 
    log to console  ${spead}
    
    close browser  


*** Keywords ***
