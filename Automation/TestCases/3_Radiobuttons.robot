*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***

Testing | Radio Buttons and Check Boxes
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    select radio button     sex     Female
    select radio button     exp     5
    
    select checkbox       Manual Tester
    select checkbox     Automation Tester

    unselect checkbox   Manual Tester
    close browser  


*** Keywords ***
