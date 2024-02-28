*** Settings ***
Library     PuppeteerLibrary
Library     Dialogs


*** Variables ***
${browser}      chrome
${url}          http://127.0.0.1:7272/basic-html-elements.html


*** Test Cases ***
Demo id locator  
    &{options}=      create dictionary      headless=${false}
    open browser    ${url}      ${browser}      options=${options}
    input text      id:prop-visible     hello
    # input text      xpath://input[@id='prop-visible']     hello
    Dialogs.Pause Execution


Demo css locator  
    &{options}=      create dictionary      headless=${false}
    open browser    ${url}      ${browser}      options=${options}
    input text      css:input[value='Visible']     hello
    # input text      css:#prop-visible     hello
    Dialogs.Pause Execution

Demo xpath locator  
    &{options}=      create dictionary      headless=${false}
    open browser    ${url}      ${browser}      options=${options}
    input text      xpath://input[@id='prop-visible']     hello
    Dialogs.Pause Execution