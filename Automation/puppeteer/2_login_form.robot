*** Settings ***
Library     PuppeteerLibrary
Library     Dialogs


*** Variables ***
${browser}      chrome
${url}          http://127.0.0.1:7272/login-form-example.html


*** Test Cases ***
Demo login with valid username and password
    &{options}=      create dictionary      headless=${false}
    open browser    ${url}      ${browser}      options=${options}
    # input text      xpath://input[@id='exampleInputEmail1']       demo@demo.com
    input text      xpath://input[@id='exampleInputEmail1']       demo@qahive.com
    input text      xpath://input[@id='exampleInputPassword1']        123456789
    click element       xpath://input[@id='exampleCheck1']

    run async keywords                  # ใช้แทน sleep ใน selenium  ซึ่งเป็นการบอกว่า คีย์เวิร์ดด้านล่าง จะรันเป็นพาราเรล (รันพร้อมๆกัน)
    ...     wait for new window open     AND    
    ...     click element       xpath://button[contains(text(),'Submit')]

    switch window       NEW             # parameter NEW =>  บอก test script ว่าให้ไปควบคุม หน้าต่างใหม่ที่เปิดขึ้นมา
    wait until page contains         Welcome Page        # ตรวจสอบว่ามีคำว่า     Welcome Page 
    
    Dialogs.Pause Execution