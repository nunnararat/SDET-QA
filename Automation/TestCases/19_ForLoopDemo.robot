*** Settings ***
Library     SeleniumLibrary


*** Variables ***



*** Test Cases ***
Testing | For Loop 1
    FOR     ${i}    IN RANGE    1   10              # แสดงผล 1-9
        log to console      ${i}  
    END

Testing | For Loop 2 | one line
    FOR     ${i}    IN      1 2 3 4 5 6 7 8                 # 1-8 มีแค่ช่องว่างเดียว จึงแสดงผลในบรรทัดเดียวกัน
        log to console      ${i}  
    END

Testing | For Loop 3 | multiple line
    FOR     ${i}    IN      1  2  3  4  5  6  7  8                 # 1-8 มีสองช่องว่าง จึงแสดงผลแบบขึ้นบรรทัดใหม่
        log to console      ${i}  
    END

Testing | For Loop 4 | with list number
    # @{items}    create list     1 2 3 4 5                   # 1-5 มีแค่ช่องว่างเดียว จึงแสดงผลในบรรทัดเดียวกัน
    @{items}    create list     1  2  3  4  5               # 1-5 มีสองช่องว่าง จึงแสดงผลแบบขึ้นบรรทัดใหม่
    FOR     ${i}    IN      @{items}
        log to console      ${i}
    END

Testing | For Loop 5 | with list string
    # @{items}    create list     john david smith scott                  # list มีแค่ช่องว่างเดียว จึงแสดงผลในบรรทัดเดียวกัน
    @{items}    create list     john  david  smith  scott               # list มีสองช่องว่าง จึงแสดงผลแบบขึ้นบรรทัดใหม่
    FOR     ${i}    IN      @{items}
        log to console      ${i}
    END

Testing | For Loop 6 | with list | with exit
    @{items}    create list     1  2  3  4  5  6  7  8                # list มีสองช่องว่าง จึงแสดงผลแบบขึ้นบรรทัดใหม่
    FOR     ${i}    IN      @{items}
        exit for loop if    ${i} == 4
        log to console      ${i}
    END

Testing | For Loop 7 | with list | with continue
    @{items}    create list     1  2  3  4  5  6  7  8                # list มีสองช่องว่าง จึงแสดงผลแบบขึ้นบรรทัดใหม่
    FOR     ${i}    IN      @{items}
        continue for loop if    ${i} == 4
        log to console      ${i}
    END



*** Keywords ***
