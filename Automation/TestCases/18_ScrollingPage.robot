*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}   chrome  
${url}      https://www.countries-ofthe-world.com/flags-of-the-world.html


*** Test Cases ***
Testing | Scrolling
    open browser    ${url}   ${browser}
    ...    options=add_experimental_option("detach", True)
    Maximize Browser Window

    # execute javascript      window.scrollTo(0, 2500)      # scroll ลงมาตามค่าที่กำหนด
    # scroll element into view        //*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img          # scroll ลงมาจนกว่าจะเจอภาพธงอินเดีย

    execute javascript      window.scrollTo(0, document.body.scrollHeight)          # end of the page  [ scroll ลงมาด้านล่างสุด ]
    execute javascript      window.scrollTo(0, -document.body.scrollHeight)          # starting point  [ scroll กลับไปที่จุดเริ่มต้น ด้านบนสุด ]

    close browser  


*** Keywords ***
