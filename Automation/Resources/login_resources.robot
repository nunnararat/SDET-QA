*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${login url}        https://admin-demo.nopcommerce.com   
${browser}          chrome



*** Keywords ***
Open my Browser    
    open browser    ${login url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

Close Browsers    
    close all browsers
    

Open Login Page      
    go to   ${login url}

Input username
    [Arguments]     ${username}
    input text      id:Email    ${username}

Input pwd
    [Arguments]     ${password}
    input text      id:Password    ${password}

Click login button      
    click element       //button[contains(text(),'Log in')]

Click logout link  
    click element       Logout

Error message should be visible 
    page should contain     Login was unsuccessful

Dashboard page should be visible    
    page should contain     Dashboard  