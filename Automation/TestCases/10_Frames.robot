*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://seleniumhq.github.io/selenium/docs/api/java/index


*** Test Cases ***

Testing | Frames
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    select frame    packageListFrame        # id name xpath
    click link      org.openqa.selenium    
    unselect frame      
    sleep   3

    select frame    packageFrame
    click link      WebDriver
    unselect frame 
    sleep   3 

    select frame    classFrame
    click link      Help
    unselect frame  
    sleep   3

    close browser


*** Keywords ***
