*** Settings ***
Library    PuppeteerLibrary
Test Teardown    Close All Browser
Suite Teardown    Close Puppeteer

*** Test Cases ***
# Enable / Disable
Element proprty is enable
    Element Should Be Enabled    id:prop-enable

Element property is disable
    Element Should Be Disabled    id:prop-disable
    Run Keyword And Expect Error    REGEXP:Element 'id:prop-enable' is enabled    Element Should Be Disabled    id:prop-enable


# Visible / Hide
Element is visible and not visible
    Element Should Be Visible    id:prop-visible
    Element Should Not Be Visible    id:prop-hide
    Run Keyword And Expect Error    REGEXP:Element 'id:prop-hide' is not be visible    Element Should Be Visible    id:prop-hide



# Text
Element should containt text
    Element Should Contain    id=prop-text    Please    ${True}
    
Element should not contain text
    Element Should Not Contain    id=prop-text    Please input2    ${True}
    
Element text should be
     Element Text Should Be    id=prop-text    Please input    ${True}
     
Element text should not be
    Element Text Should Not Be    id=prop-text    Please    ${True}    


