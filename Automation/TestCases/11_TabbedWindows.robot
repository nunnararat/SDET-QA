*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://demo.automationtesting.in/Windows.html      


*** Test Cases ***

Testing | switch window
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    click element       //*[@id="Tabbed"]/a/button
    switch window       title=Selenium
    click element       //*[@id="announcement-banner"]/div/div/div/h4/a
    sleep   3

    close all browsers


*** Keywords ***
