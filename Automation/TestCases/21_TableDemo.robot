*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}   chrome  
${url}      https://testautomationpractice.blogspot.com/


*** Test Cases ***
Testing | Table Validations
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    ${rows}=    get element count   //table[@name='BookTable']/tbody/tr                 # count จำนวน rows
    ${columns}=    get element count   //table[@name='BookTable']/tbody/tr[1]/th        # count จำนวน columns

    log to console  ${rows}
    log to console  ${columns}

    ${data}=    get text        //table[@name='BookTable']/tbody/tr[5]/td[1]        # get text : row 5 , column 1
    log to console      ${data}

    # Validations
    table column should contain     //table[@name='BookTable']      2       Author              # column 2 == Author
    table row should contain        //table[@name='BookTable']      4       Learn JS            # row 4 == Learn JS
    table cell should contain       //table[@name='BookTable']      5       2       Mukesh      # row 5, column 2  == Mukesh
    table header should contain     //table[@name='BookTable']      BookName

    close browser


*** Keywords ***