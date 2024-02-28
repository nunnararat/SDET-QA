*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://www.google.com/   
${url2}      https://www.bing.com/   


*** Test Cases ***

Testing | Navigation 
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    ${location}=   get location
    log to console  ${location}

    go to       ${url2}   
    ${location}=   get location
    log to console  ${location}

    go back 
    ${location}=   get location
    log to console  ${location}


    close all browsers


*** Keywords ***
