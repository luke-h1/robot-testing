*** Settings ***
Library    SeleniumLibrary


Suite Setup       Run Keywords    Close Browser 
Suite Teardown    Run Keywords    Close Browser 



*** Variables ***
${URL}              https://www.asos.com/men/
&{BROWSER}          firefox=firefox                                                  chrome=chrome
${DROPDOWN}         xpath=//*[@id="myAccountDropdown"]/button
${SIGN_IN}          xpath=//*[@id="myaccount-dropdown"]/div/div/div/div/span/a[1]
${EMAIL}            xpath=//*[@id="EmailAddress"]
${SUBMIT_BTN}       xpath=//*[@id="signin"]
${PWD_ERROR_STR}    xpath=Hey, we need a password here

*** Test Cases ***
no password should throw error on login or captcha 
    password err




*** Keywords ***
password err
    Open Browser               ${URL}              ${BROWSER.chrome} 
    Maximize Browser Window    
    Sleep                      3
    Mouse Over                 ${DROPDOWN}
    Sleep                      2
    Click Element              ${SIGN_IN}          
    Sleep                      2 
    Input Text                 ${EMAIL}            bob@gmail.com
    Click Element              ${SUBMIT_BTN}
    Sleep                      2 
