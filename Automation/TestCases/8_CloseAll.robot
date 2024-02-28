*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://demowebshop.tricentis.com/register
${url2}     https://demo.nopcommerce.com/

*** Test Cases ***

Testing | Close All
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    open browser    ${url2}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    close all browsers


*** Keywords ***
