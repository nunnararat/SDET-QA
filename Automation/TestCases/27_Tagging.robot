*** Settings ***




*** Test Cases ***
TC1 User Registration Test
    [Tags]  sanity
    log to console      This is user reg test
    log to console      user regostration test is over

TC2 Login Test
    [Tags]  sanity
    log to console      This is login test
    log to console      login test is over

TC3 Change user settings
    [Tags]  regresssion
    log to console      This is changin user settings test
    log to console      Change user settings test is over

TC4 Logout Test
    [Tags]  sanity
    log to console      This is logout test   
    log to console      logout test is over
