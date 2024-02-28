*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://demowebshop.tricentis.com/register

*** Test Cases ***

Testing | implicit wait 
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    set selenium implicit wait      10 seconds  

    ${implicittime}=   get selenium implicit wait
    log to console  ${implicittime}

    select radio button     Gender      M
    input text      name:FirstName      David
    input text      name:LastName      David
    input text      name:Email      abc@gmail.com
    input text      name:Password      1234
    input text      name:ConfirmPassword      1234
    close browser  


*** Keywords ***
