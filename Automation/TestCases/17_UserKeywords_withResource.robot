*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/resources.robot



*** Variables ***
${browser}   chrome  
${url}      https://demo.nopcommerce.com/



*** Test Cases ***
Testing | User Keywords with Resource
    ${pageTitle}=       launchBrowser   ${url}  ${browser}
    log to console      ${pageTitle}
    log     ${pageTitle}
    loginToApplication 
    close browser  


