*** Settings ***
Library     SeleniumLibrary
Resource    ./register-resources.robot

Suite Setup       Run Keywords    Close Browser 
Suite Teardown    Run Keywords    Close Browser 


*** Test Cases ***
blank email
    blank email keyword 


blank password
    blank password keyword



*** Keywords ***
blank email keyword
    Open Browser                 ${SITE_URL}                 ${BROWSER} 
    Maximize Browser Window 
    Double Click Element         ${COOKIE_MSG}
    Double Click Element         ${COOKIE_MSG}
    Sleep                        2                           
    Double Click Element         ${COOKIE_MSG}
    Sleep                        3
    Click Link                   ${MY_ACCOUNT_BTN} 
    Click Button                 ${REGISTER_FOR_ACCOUNT} 
    Sleep                        1 
    Input Text                   ${FIRST_NAME_REGISTER}      john           
    Input Text                   ${SURNAME_REGISTER}         doe            
    Input Password               ${PASSWORD_REGISTER}        password1 
    Input Password               ${PASSWORD_CONFIRM}         password1 
    Select From List By Index    ${COUNTRY_DROPDOWN}         1 
    Click Button                 ${REGISTER_CONFIRM_BTN}     
    Sleep                        2 
    Element Should Be Visible    ${ERROR_MSG}
    Sleep                        2 


blank password keyword
    Open Browser                 ${SITE_URL}                 ${BROWSER} 
    Maximize Browser Window 
    Double Click Element         ${COOKIE_MSG}
    Double Click Element         ${COOKIE_MSG}
    Sleep                        2                           
    Double Click Element         ${COOKIE_MSG}
    Sleep                        3
    Click Link                   ${MY_ACCOUNT_BTN} 
    Click Button                 ${REGISTER_FOR_ACCOUNT} 
    Sleep                        1 
    Input Text                   ${FIRST_NAME_REGISTER}      john                 
    Input Text                   ${SURNAME_REGISTER}         doe                  
    Input Text                   ${EMAIL_REGISTER}           johndoe@gmail.com    
    Select From List By Index    ${COUNTRY_DROPDOWN}         1 
    Click Button                 ${REGISTER_CONFIRM_BTN}     
    Sleep                        2 
    Element Should Be Visible    ${ERROR_MSG}
    Sleep                        2 