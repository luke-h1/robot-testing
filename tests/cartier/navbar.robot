*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary


Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser



*** Variables ***
${SITE_URL}    https://www.cartier.com/
${BROWSER}     chrome 




# NAV ITEM ONE PROPERTIES
${NAV_ITEM_1}    xpath=//*[@id="fl-header"]/div/div[3]/div[1]/nav/div[2]/div/ul/li[1]/a
${NAV_ITEM_1-IMG-1}

*** Test Cases ***

Ensure Jewelery items render properly 
    jewellery 




*** Keywords ***
jewellery
    Open Browser           ${SITE_URL}      ${BROWSER}
    Sleep                  5                
    Mouse Over             ${NAV_ITEM_1}
    Sleep                  2
    Page Should Contain    LOVE
    Page Should Contain    Juste un Clou
    Page Should Contain    Clash de Cartier
    Page Should Contain    Trinity
    Page Should Contain    Panthère de Cartier
    Page Should Contain    Diamond Collection


