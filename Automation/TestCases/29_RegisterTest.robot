*** Settings ***  
Library         SeleniumLibrary
Resource        ../Resources/RegisterKeywords.robot     


*** Variables ***
${Browser}      chrome
${RegUrl}       https://demowebshop.tricentis.com/
${gender}       F
${firstname}    nararat
${lastname}     tangkaew
${email}        nunnararat4@demo.com
${password}     123456
${confirmpassword}      123456


*** Test Cases ***
Register Test
    Open my Browser             ${RegUrl}       ${Browser}
    Click LogIn                 
    Select Gender              ${gender}
    Enter FirstName             ${firstname}
    Enter LastName              ${lastname} 
    Enter Email                 ${email}
    Enter Password              ${password}
    Enter Confirm Password      ${confirmpassword}
    Click Register      
    Verify Successfull Register  
    Close My Browsers 
