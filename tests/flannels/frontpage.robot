*** Settings ***
Library    SeleniumLibrary


Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser 

*** Variables ***
${SITE_URL}    https://www.flannels.com/men
${BROWSER}     chrome



# scroll button
${SCROLL_BTN}    xpath=//*[@class="back-to-top"]



*** Test Cases ***

check scroll to top btn works
    checkBtn




*** Keywords ***
checkBtn
    Open Browser          ${SITE_URL}                 ${BROWSER}
    Sleep                 2
    Execute Javascript    window.scrollTo(0, 5000) 
    Sleep                 2 
    Click Link            ${SCROLL_BTN}