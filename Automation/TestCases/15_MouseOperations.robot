*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}   chrome  
${url}      https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}      https://testautomationpractice.blogspot.com/
${url3}     https://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html


*** Test Cases ***
Testing | MouseActions => Right click / open context menu | Double click action | Drag and Drop
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window
    
    # Right click / open context menu
    open context menu       //span[contains(text(),'right click me')]
    sleep   3

    # Double click action
    go to       ${url2}
    double click element    //button[contains(text(),'Copy Text')]
    sleep   3

    # Drag and Drop
    go to       ${url3}
    drag and drop       id:box6      id:box106  
    sleep   3

    close browser


*** Keywords ***
