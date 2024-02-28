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
    click link    ${link_register}   

Select Gender
    [Arguments]     ${gender}    
    select radio button     Gender      ${gender}
    # Page Should Contain Radio Button Selected       xpath://input[@id='gender-female']

Enter FirstName  
    [Arguments]     ${firstname}     
    input text      ${txt_regFirstName}        ${firstname}     

Enter LastName  
    [Arguments]     ${lastname}     
    input text      ${txt_regLastName}        ${lastname}  

Enter Email  
    [Arguments]     ${email}     
    input text      ${txt_regEmail}        ${email}  

Enter Password
    [Arguments]     ${password}  
    input text      ${txt_regPassword}    ${password}

Enter Confirm Password
    [Arguments]     ${confirmpassword}  
    input text      ${txt_regConfirmPassword}    ${confirmpassword}


Click Register
    click button    ${btn_reg}


Verify Successfull Register  
    title should be         Demo Web Shop. Register


Close My Browsers  
    close all browsers 