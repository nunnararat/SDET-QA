*** Settings ***
Library             SeleniumLibrary
Library             DataDriver      ../TestData/LoginData.xlsx      sheet_name=Sheet1
Resource            ../Resources/login_resources.robot     

Suite Setup         Open my Browser
Suite Teardown      Close Browsers
Test Template       Invalid login




*** Test Cases ***         
Testing | Login with Excel using ${username} and ${password}


*** Keywords ***
Invalid login 
    [Arguments]     ${username}     ${password}
    Input username   ${username}
    Input pwd   ${password}
    Click login button
    Error message should be visible 