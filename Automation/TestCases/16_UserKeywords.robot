*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}   chrome  
${url}      https://demo.nopcommerce.com/

*** Test Cases ***
Testing | User Keywords
    ${pageTitle}=       launchBrowser   ${url}  ${browser}
    log to console      ${pageTitle}
    log     ${pageTitle}
    loginToApplication 
    close browser  


*** Keywords ***
loginToApplication    
    click link      //a[contains(text(),'Log in')]
    input text      //input[@id='Email']        nunnararut.1999@gmail.com
    input text      //input[@id='Password'] 	 Test@123
    click element       //button[contains(text(),'Log in')]

launchBrowser
    [Arguments]     ${appurl}   ${appbrowser}
    open browser    ${appurl}   ${appbrowser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window
    ${title}=   get title
    RETURN      ${title}