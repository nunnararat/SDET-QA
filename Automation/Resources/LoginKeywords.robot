*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py


*** Keywords *** 
Open my Browser 
    [Arguments]     ${SiteUrl}      ${Browser}
    open browser    ${SiteUrl}      ${Browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

Click LogIn
    click link    ${link_logIn}  


Enter UserName  
    [Arguments]     ${username}     
    input text      ${txt_loginUserName}    ${username}  

Enter Password
    [Arguments]     ${password}  
    input text      ${txt_loginPassword}    ${password}


Click SignIn
    click button    ${btn_signIn}


Verify Successfull Login  
    title should be         nopCommerce demo store. Login


Close My Browsers  
    close all browsers 