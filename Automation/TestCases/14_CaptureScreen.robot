*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://www.google.com/   
 

*** Test Cases ***
Testing | Capture Screen
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window
    
    input text      //textarea[@id='APjFqb']         Robot Framework
    capture element screenshot          //body/div[1]/div[2]/div[1]/img[1]          ../Screenshots/logo.png
    capture page screenshot     ../Screenshots/search.png

    close browser


*** Keywords ***
