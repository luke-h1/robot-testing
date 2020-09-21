*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary



Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser 



*** Variables ***
${URL}        https://www.ebuyer.com/
&{BROWSER}    chrome=chrome              firefox=firefox



#NAVBAR VARS
${INPUT}    xpath=/html/body/header/div/form/span/input[2]



*** Test Cases ***
Ensure All Nav Items Are Visible
    nav-item




*** Keywords ***
nav-item
    Open Browser               ${URL}      ${BROWSER.chrome}
    Maximize Browser Window
    Sleep                      5
    Input Text                 ${INPUT}    Hello
