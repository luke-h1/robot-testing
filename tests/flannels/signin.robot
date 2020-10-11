*** Settings ***
Library    SeleniumLibrary

Suite Setup       Run Keywords 
Suite Teardown    Run Keywords     Close Browser 

*** Variables ***
${SITE_URL}       https://www.flannels.com/men 
${BROWSER}        chrome
${SIGN_IN_BTN}    xpath=//*[@id="dnn_ctl01_dnnLOGIN_loginLink"]

# Sign in / Sign up fields
${EMAIL_FIELD}    xpath=//*[@id="Login_EmailAddress"]
${PWD_FIELD}      xpath=//*[@id="Login_Password"]
${SUBMIT_BTN}

*** Test Cases ***
positive login
    login-correct

negative login(blank pwd)
    no-pwd


negative-login(blank-email)
    no-email

*** Keywords ***
login-correct
    Open Browser                ${SITE_URL}                     ${BROWSER} 
    Maximize Browser Window 
    Sleep                       1
    Click Element               ${SIGN_IN_BTN}
    Sleep                       1 
    Input Text                  ${EMAIL_FIELD}                  johndoe@gmail.com
    Input Text                  ${PWD_FIELD}                    password12345
    Click Link                  xpath=//*[@id="LoginButton"]
    Close Browser 


no-pwd
    Open Browser                ${SITE_URL}                     ${BROWSER} 
    Maximize Browser Window 
    Sleep                       1
    Click Element               ${SIGN_IN_BTN}
    Sleep                       1 
    Input Text                  ${EMAIL_FIELD}                  johndoe@gmail.com
    Click Link                  xpath=//*[@id="LoginButton"]
    Sleep                       1
    Close Browser 

no-email
    Open Browser                ${SITE_URL}                      ${BROWSER} 
    Maximize Browser Window 
    Sleep                       1
    Click Element               ${SIGN_IN_BTN}
    Sleep                       1 
    Input Text                  ${PWD_FIELD}                     supersecurepwd12345
    Click Link                  xpath=//*[@id="LoginButton"] 
    Sleep                       1
    Close Browser 