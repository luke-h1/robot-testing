*** Settings ***
Library    SeleniumLibrary 


Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser 



*** Variables ***
${SITE_URL}        https://www.flannels.com/men 
${BROWSER}         chrome 
${SIGN_IN_BTN}     xpath=//*[@id="dnn_ctl01_dnnLOGIN_loginLink"]
${SIGN_UP_BTN}     xpath=//*[@class="dnnPrimaryAction"] 
${REGISTER_BTN}    xpath=//*[@id="RegistrationSubmit"] 
# Sign up form details
${FIRST_NAME}     xpath=//*[@id="Registration_FirstName"]
${LAST_NAME}      xpath=//*[@id="Registration_LastName"] 
${EMAIL}          xpath=//*[@id="Registration_EmailAddress"]
${PWD}            xpath=//*[@id="txtPassword"]
${PWD_CONFIRM}    xpath=//*[@id="Registration_ConfirmPassword"]
# checkbox
${CHECKBOX_DAY}      xpath=//*[@id="Registration_DateOfBirthDay"]
${CHECKBOX_MONTH}    xpath=//*[@id="Registration_DateOfBirthMonth"] 
${CHECKBOX_YEAR}     xpath=//*[@id="Registration_DateOfBirthYear"]
${OFFERS}            xpath=//*[@id="Registration_IsSubscriber"]



*** Test Cases ***
postive register
    register-all-fields

negative register(no-pwd)
    no-password-register

*** Keywords ***
register-all-fields
    Open Browser                 ${SITE_URL}                 ${BROWSER}
    Maximize Browser Window 
    Sleep                        1 
    Click Element                ${SIGN_IN_BTN} 
    Sleep                        1
    Click Link                   ${SIGN_UP_BTN}
    Sleep                        1 
    Input Text                   ${FIRST_NAME}               John                 
    Input Text                   ${LAST_NAME}                Doe
    Input Text                   ${EMAIL}                    johndoe@gmail.com
    Select From List By Index    ${CHECKBOX_DAY}             5
    Select From List By Index    ${CHECKBOX_MONTH}           6 
    Select From List By Value    ${CHECKBOX_YEAR}            1999
    Input Text                   ${PWD}                      password1
    Input Text                   ${PWD_CONFIRM}              password1 
    Execute Javascript           window.scrollTo(0, 2000)    
    Sleep                        2
    Select Checkbox              ${OFFERS}
    Click Link                   ${REGISTER_BTN}
    Close Browser 


no-password-register
    Open Browser                 ${SITE_URL}                 ${BROWSER}
    Maximize Browser Window 
    Sleep                        1 
    Click Element                ${SIGN_IN_BTN} 
    Sleep                        1
    Click Link                   ${SIGN_UP_BTN}
    Sleep                        1 
    Input Text                   ${FIRST_NAME}               John                 
    Input Text                   ${LAST_NAME}                Doe
    Input Text                   ${EMAIL}                    johndoe@gmail.com
    Select From List By Index    ${CHECKBOX_DAY}             5
    Select From List By Index    ${CHECKBOX_MONTH}           6 
    Select From List By Value    ${CHECKBOX_YEAR}            1999
    Execute Javascript           window.scrollTo(0, 2000)    
    Sleep                        2
    Select Checkbox              ${OFFERS}
    Click Link                   ${REGISTER_BTN}
    Sleep                        6 
    Close Browser 


