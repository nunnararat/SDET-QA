*** Settings ***
Library     PuppeteerLibrary
Library     Dialogs


*** Variables ***
${browser}      chrome
${url}          https://web-demo.qahive.com/e-commerce/register


*** Test Cases ***
Register 
    &{options}=      create dictionary      headless=${false}
    open browser    ${url}      ${browser}      options=${options}
    click element       xpath://button[contains(text(),'Register')]
    input text      xpath://input[@name='email']              demo20@demo.com
    input text      xpath://input[@name='password']           123456
    input text      xpath://input[@name='name']               demo
    click element       xpath://body/div[@id='root']/main[1]/div[1]/div[1]/form[1]/div[4]/div[2]/label[1]/input[1]      
    click element        xpath://button[contains(text(),'submit')]

    # ขั้นตอนที่ 1: เลือกสินค้าที่ 1 และ 2 และเพิ่มลงในตะกร้า
    Click Element    xpath://body/div[@id='root']/section[1]/main[1]/div[1]/div[1]/div[2]/div[1]/div[1]/button[1]    
    Click Element    xpath=//body/div[@id='root']/section[1]/main[1]/div[1]/div[1]/div[2]/div[2]/div[1]/button[1]   
    
    ${items1}=    Get Text    xpath://div[contains(text(),'Travel Bag')] 
    # should contain    ${items1}    Travel Bag
    ${items2}=    Get Text    xpath://div[contains(text(),'Apple Watch')]  
    # should contain    ${items2}    Apple Watch
    ${items_list} =  Create List  ${items1}  ${items2}
    # log to console   ${items_list[0]}


    ${price_items1}=    Get Text    xpath://span[contains(text(),'3000')]
    ${price_items2}=    Get Text    xpath://span[contains(text(),'12500')]
    ${price_list} =  Create List  ${price_items1}  ${price_items2}



    # # # ตรวจสอบว่ามี 2 สินค้าในตะกร้า และเป็นสินค้าที่ 1 และ 2 จากรายการสินค้า
    # go to cart
    Click link    xpath://body/div[@id='root']/section[1]/main[1]/div[1]/div[1]/div[1]/a[1]            # cart

    ${cart_items1}=    Get Text     xpath://h5[contains(text(),'Travel Bag')]  
    should contain    ${cart_items1}    ${items_list[0]}
    ${cart_items2}=    Get Text     xpath://h5[contains(text(),'Apple Watch')]  
    should contain    ${cart_items2}    ${items_list[1]}
 

    # # # ตรวจสอบว่าราคาในแต่ละสินค้าถูกต้อง
    ${price_cart_items1}=    Get Text     xpath://h5[contains(text(),'3000')] 
    should contain    ${price_cart_items1}    ${price_list[0]}
    ${price_cart_items2}=    Get Text     xpath://h5[contains(text(),'12500')]
    should contain    ${price_cart_items2}    ${price_list[1]}
 






    # # # ขั้นตอนที่ 4: ตรวจสอบว่าราคารวมถูกต้อง
    ${total_price}    Get Text    xpath://p[contains(text(),'15500')]
    Should Be Equal As Numbers    ${total_price}    15500

    # # # ขั้นตอนที่ 5: ตรวจสอบว่าจำนวนสินค้าทั้งหมดถูกต้อง
    ${total_items_travelBAG}    Get Text    xpath://body/div[@id='root']/section[1]/main[1]/div[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/div[1]/h5[1]
    Should Be Equal As Numbers    ${total_items_travelBAG}    1
    ${total_items_Apple}    Get Text    xpath://body/div[@id='root']/section[1]/main[1]/div[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[1]/h5[1]
    Should Be Equal As Numbers    ${total_items_Apple}    1






