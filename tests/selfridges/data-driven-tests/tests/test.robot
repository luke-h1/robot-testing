*** Settings ***
Resource    ../data/inputdata.robot 
Library     OperatingSystem
Library     SeleniumLibrary

Suite Setup       Run Keywords 
Suite Teardown    Run Keywords     Close Browser


*** Test Cases ***
Create an account with correct vars
    start the test



*** Keywords ***
start the test
    Open Browser               ${BASE_URL}                 ${BROWSER}
    Maximize Browser Window
    Sleep                      5 
    Click Element              ${CREATE_BTN}
    Sleep                      3 
    Click Element              ${TITLE}                    
    sleep                      2
    Click Element              ${MR}
    sleep                      3 
    Input Text                 ${FIRSTNAME}                ${REGISTER_USER.firstname} 
    sleep                      1 
    Input Text                 ${LASTNAME}                 ${REGISTER_USER.lastname}
    sleep                      1 
    Input Text                 ${EMAIL}                    ${REGISTER_USER.email} 
    sleep                      1 
    Execute Javascript         window.scrollTo(0, 300)
    Sleep                      2 
    Click Element              ${CHECKBOX}
    sleep                      1 
    Input Text                 ${PASSWORD}                 ${REGISTER_USER.password}
    Input Text                 ${PASSWORD_CONFIRM}         ${REGISTER_USER.confirmpassword} 
    Execute Javascript         window.scrollTo(0, 500) 
    sleep                      3
    Execute Javascript         window.scrollTo(0, 800) 
    Sleep                      2 
    Click Button               ${SUBMIT_BTN}
    Close Browser 