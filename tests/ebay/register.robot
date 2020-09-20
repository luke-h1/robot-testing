*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser 

*** Variables ***
&{SITE_URL}           prod=https://www.ebay.com/
&{BROWSER}            chromestable=chrome           firefoxstable=firefox
${SIGN_IN_SECTION}    //*[@id="gh-ug"]



${F_NAME}      xpath=//*[@id="firstname"]
${L_NAME}      xpath=//*[@id="lastname"]
${EMAIL}       xpath=//*[@id="email"]
${PWD}         xpath=//*[@id="PASSWORD"]
${BTN}         xpath=//*[@id="ppaFormSbtBtn"]



*** Test Cases ***
Register user with correct creds
    Register User correct Fields 



*** Keywords ***
Register User correct Fields
    Open Browser                 ${SITE_URL.prod}           ${BROWSER.chromestable}
    Sleep                        1s 
    Element Should Be Visible    ${SIGN_IN_SECTION}
    Click Link                   //*[@id="gh-ug-flex"]/a
    Input Text                   ${F_NAME}                  bob
    Input Text                   ${L_NAME}                  bob 
    Input Text                   ${EMAIL}                   bob@bob.com 
    Input Text                   ${PWD}                     password1235
    Click Button                 ${BTN}
    Close Browser





