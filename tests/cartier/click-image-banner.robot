*** Settings ***
Library    OperatingSystem 
Library    SeleniumLibrary

Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser

*** Variables ***
${SITE_URL}    https://www.cartier.co.uk/
${BROWSER}     chrome 
${SCROLL}      window.scrollTo(0, 100)
${A_TAG}       //*[@id="carousel_container0"]/a[2]



*** Test Cases ***
Click Element
    get_selector



*** Keywords ***
get_selector
    Open Browser                     ${SITE_URL}    ${BROWSER}
    Sleep                            3 
    Execute Javascript               ${SCROLL} 
    Sleep                            1 
    Click Element                    ${A_TAG}
    Sleep                            1
    Click Element                    ${A_TAG}
    Sleep                            1 
    Close Browser 








