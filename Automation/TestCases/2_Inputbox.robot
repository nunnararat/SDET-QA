*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://demo.nopcommerce.com/

*** Test Cases ***

Testing | Input Box
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window
    loginToApplication 
    close browser  

Testing | Handle Input Box
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window
    title should be     nopCommerce demo store
    Handle Inpuut Box
    close browser  


*** Keywords ***
loginToApplication    
    click link      //a[contains(text(),'Log in')]
    input text      //input[@id='Email']        nunnararut.1999@gmail.com
    input text      //input[@id='Password'] 	 Test@123
    click element       //button[contains(text(),'Log in')]

Handle Inpuut Box
    click link      //a[contains(text(),'Log in')]
    ${email_txt}    set variable    //input[@id='Email']  
    element should be visible   ${email_txt}
    input text      //input[@id='Email']        nunnararut.1999@gmail.com
    sleep   3 
    clear element text      ${email_txt}
    sleep   3 