*** Settings ***  
Library         SeleniumLibrary
Resource        ../Resources/LoginKeywords.robot     


*** Variables ***
${Browser}      chrome
${SiteUrl}      https://demo.nopcommerce.com/
${user}         nunnararut@gmail.com
${pwd}          Test@123



*** Test Cases ***
Login Test
    Open my Browser     ${SiteUrl}      ${Browser}   
    Click LogIn
    Enter UserName      ${user}   
    Enter Password      ${pwd}  
    Click SignIn   
    Verify Successfull Login   
    Close My Browsers

