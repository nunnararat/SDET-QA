*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window
    loginToApplication 
    close browser  


*** Keywords ***
loginToApplication    
    click link      //a[contains(text(),'Log in')]
    input text      //input[@id='Email']        nunnararut@gmail.com
    input text      //input[@id='Password'] 	 Test@123
    click element       //button[contains(text(),'Log in')]