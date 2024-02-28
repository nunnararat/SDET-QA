*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://www.google.com/   
${url2}      https://www.bing.com/   


*** Test Cases ***

Testing | Multiple Browsers   
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    sleep   2

    open browser    ${url2}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    switch browser      1
    ${title}=   get title  
    log to console      ${title}


    switch browser      2
    ${title}=   get title  
    log to console      ${title}

    close all browsers


*** Keywords ***
