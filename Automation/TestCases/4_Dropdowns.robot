*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm

*** Test Cases ***

Testing | Handling Dropdowns and list
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window
    select from list by label      continents    Australia 
    select from list by index      continents    5
    
    select from list by index      selenium_commands    0
    select from list by label      selenium_commands    Switch Commands 
    sleep   2
    unselect from list by label      selenium_commands    Switch Commands 
    close browser  


*** Keywords ***
