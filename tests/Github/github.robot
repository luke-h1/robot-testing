*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser


*** Variables ***
${URL}        https://www.github.com
${BROWSER}    firefox
${STR}        GitHub is a development platform inspired by the way you work. From open source to business, you can host and review code, manage projects, and build software alongside 50 million developers.
${TITLE}      Built for developers



# FORM DOM SELECTORS
${USERNAME}    //*[@id="user[login]"]
${EMAIL}       //*[@id="user[email]"] 
${PASSWORD}    //*[@id="user[password]"]


# FORM VALUES
${USERNAME_VAL}    luke123546
${EMAIL_VAL}       luke@email.com
${PASSWORD_VAL}    supersecretpwd123



*** Test Cases ***

Check Text
    validate Text


Create GH Account
    Submit Form    



*** Keywords ***
validate Text
    Open Browser                    ${URL}      ${BROWSER} 
    Sleep                           1 
    Current Frame Should Contain    ${STR}
    Sleep                           1
    Current Frame Should Contain    ${TITLE}
    Close Browser 


Submit Form
    Open Browser      ${URL}         ${BROWSER}
    Sleep             1 
    Input Text        ${USERNAME}    ${USERNAME_VAL}
    Sleep             1 
    Input Text        ${EMAIL}       ${EMAIL_VAL}
    Sleep             1 
    Input Text        ${PASSWORd}    ${PASSWORD_VAL}
    Sleep             1 
    Close Browser 