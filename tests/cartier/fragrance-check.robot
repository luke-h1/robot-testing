*** Settings ***
Library    OperatingSystem 
Library    SeleniumLibrary 


Suite Setup       Run Keywords 
Suite Teardown    Run Keywords     Close Browser 


*** Variables ***
${SITE_URL}               https://www.cartier.com/
${BROWSER}                chrome 
${FRAGRANCE_STR_TITLE}    A Signature Scent
${FRAGANCE_STR_SMALL}     Shop Pasha de Cartier fragrance
${IMG}                    //*[@id="carousel_container3"]/div/div/div/div[1]
${SCROLL}                 window.scrollTo(0, 800)


*** Test Cases ***

Ensure Fragrance Images Are Present
    checkImages 



*** Keywords ***
checkImages
    Open Browser                 ${SITE_URL}    ${BROWSER}
    Maximize Browser Window
    Sleep                        3 
    Execute Javascript           ${SCROLL}
    Sleep                        2 
    Element Should Be Visible    ${IMG} 
    Close Browser 