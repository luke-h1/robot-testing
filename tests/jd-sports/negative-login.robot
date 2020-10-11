*** Settings ***
Library     SeleniumLibrary
Resource    ./resources.robot 

Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser 




*** Variables ***
${URL}        https://www.jdsports.co.uk/
&{BROWSER}    chrome=chrome                  firefox=firefox 





*** Test Cases ***

blank password login
    blank password


blank email login
    blank email

*** Keywords ***
blank password
    Open Browser                 ${URL}                ${BROWSER.chrome} 
    Maximize Browser Window 
    Double Click Element         ${COOKIE_MSG}
    Double Click Element         ${COOKIE_MSG}
    Sleep                        2                     
    Double Click Element         ${COOKIE_MSG}
    Sleep                        3
    Click Link                   ${MY_ACCOUNT_BTN} 
    Input Text                   ${EMAIL_LOGIN}        johndoe@gmail.com 
    Click Button                 ${SUBMIT}
    Sleep                        3
    Element Should Be Visible    ${ERROR_DIV}          
    Sleep                        3 
    Close Browser 


blank email
    Open Browser                 ${URL}                ${BROWSER.chrome}
    Double Click Element         ${COOKIE_MSG}
    Double Click Element         ${COOKIE_MSG}
    Sleep                        2 
    Double Click Element         ${COOKIE_MSG}
    Maximize Browser Window
    Sleep                        6
    Click Link                   ${MY_ACCOUNT_BTN} 
    Input Text                   ${PASSWORD}           password12345 
    Click Button                 ${SUBMIT}
    Sleep                        3 
    Element Should Be Visible    ${ERROR_DIV}
    Close Browser 
