*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary



Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser 



*** Variables ***
${URL}        https://www.ebuyer.com/
&{BROWSER}    chrome=chrome              firefox=firefox



#NAVBAR VARS
${INPUT}       xpath=/html/body/header/div/form/span/input[2]
${ACC}         xpath=/html/body/header/div/div[2]/div/a[1] 
${REDIRECT}    https://accounts.ebuyer.com/customer/account/index.html




*** Test Cases ***
Ensure All Nav Items Are interactable
    nav-item


Click Account
    clickAccount

*** Keywords ***
nav-item
    Open Browser               ${URL}      ${BROWSER.chrome}
    Maximize Browser Window
    Sleep                      5
    Input Text                 ${INPUT}    Hello
    Sleep                      1
    Close Browser 


clickAccount
    Open Browser                ${URL}         ${BROWSER.chrome}
    Maximize Browser Window 
    Sleep                       5 
    Click Link                  ${ACC}
    Sleep                       5
    Location Should Be          ${REDIRECT}
    Close Browser 

