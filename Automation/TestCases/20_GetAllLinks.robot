*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}   chrome  
${url}      https://www.countries-ofthe-world.com/flags-of-the-world.html


*** Test Cases ***
Testing | Get All Link
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    # get จำนวน links ทั้งหมด
    ${AllLinksCount}=    get element count       //a
    log to console  ${AllLinksCount}


    @{LinkItems}    create list   

    FOR     ${i}    IN RANGE    1   ${AllLinksCount}+1
        ${linkText}=    get text    (//a)[${i}]
        log to console      ${i} : ${linkText}
        # ${LinkItems}=    Set Variable    ${LinkItems} + [${linkText}]
    END 

    # Log To Console    ${LinkItems}   # แสดงลิสต์ทั้งหมด

    close browser


*** Keywords ***
