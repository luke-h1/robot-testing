*** Settings ***
Library    SeleniumLibrary


Suite Setup       Run Keywords    Close Browser 
Suite Teardown    Run Keywords    Close Browser


*** Variables ***

${URL}            https://www.asos.com/men/ 
&{BROWSER}        chrome=chrome                                                     firefox=firefox 
${ACCOUNT}        xpath=//*[@id="chrome-sticky-header"]/div[1]/div/ul[2]/li[2]/a
${NEW_TO_ASOS}    xpath=//*[@id="myAccountDropdown"]/button



# register
${EMAIL_FIELD}             xpath=//*[@id="Email"]
${FIRST_NAME}              xpath=//*[@id="FirstName"]
${lAST_NAME}               xpath=//*[@id="LastName"]
${PASSWORD}                xpath=//*[@id="Password"]
${CHECKBOX_DAY}            xpath=//*[@id="BirthDay"]
${CHECKBOX_MONTH}          xpath=//*[@id="BirthMonth"]
${CHECKBOX_YEAR}           xpath=//*[@id="BirthYear"]
${CHECK_MENSWEAR}          xpath=//*[@id="male"]
${PREF_ALL}                xpath=//*[@id="register-form"]/form/fieldset/div[7]/fieldset/legend/div[2]/div[2]/div/button[1]
${DISCOUNT}                xpath=//*[@id="newness"]
${PWD_ERROR}               xpath=Hey, we need a password here
${GET_OUT_OF_YEAR_MENU}    xpath=//*[@id="female"]
*** Test Cases ***


blank password register
    negative password


blank email register
    negative email




*** Keywords ***
negative password
    Open Browser                 ${URL}                                                     ${BROWSER.chrome}
    Maximize Browser Window 
    Sleep                        5
    Mouse Over                   ${NEW_TO_ASOS} 
    Sleep                        1 
    Click Link                   //*[@id="myaccount-dropdown"]/div/div/div/div/span/a[2]
    Sleep                        2 
    Input Text                   ${EMAIL_FIELD}                                             johndoe@email.com 
    Input Text                   ${FIRST_NAME}                                              john 
    Input Text                   ${LAST_NAME}                                               doe 
    Execute Javascript           window.scroll(0,700)
    Sleep                        3 
    Select From List By Index    ${CHECKBOX_DAY}                                            5 
    Select From List By Index    ${CHECKBOX_MONTH}                                          6 
    Select From List By Value    ${CHECKBOX_YEAR}                                           1999
    Sleep                        1 
    Double Click Element         ${GET_OUT_OF_YEAR_MENU}
    Execute Javascript           window.scroll(0,1000)
    Sleep                        3
    Double Click Element         ${CHECK_MENSWEAR}
    Execute Javascript           window.scroll(0,1000)
    Sleep                        2 
    Double Click Element         ${PREF_ALL}
    Double Click Element         ${DISCOUNT}
    Sleep                        2 
    Click Element                //*[@id="register"]
    Close Browser

negative email
    Open Browser                 ${URL}                                                     ${BROWSER.chrome}
    Maximize Browser Window 
    Sleep                        5
    Mouse Over                   ${NEW_TO_ASOS} 
    Sleep                        1 
    Click Link                   //*[@id="myaccount-dropdown"]/div/div/div/div/span/a[2]
    Sleep                        2 
    Input Text                   ${PASSWORD}                                                password1234 
    Input Text                   ${FIRST_NAME}                                              john 
    Input Text                   ${LAST_NAME}                                               doe 
    Execute Javascript           window.scroll(0,700)
    Sleep                        3 
    Select From List By Index    ${CHECKBOX_DAY}                                            5 
    Select From List By Index    ${CHECKBOX_MONTH}                                          6 
    Select From List By Value    ${CHECKBOX_YEAR}                                           1999
    Sleep                        1 
    Double Click Element         ${GET_OUT_OF_YEAR_MENU}
    Execute Javascript           window.scroll(0,1000)
    Sleep                        3
    Double Click Element         ${CHECK_MENSWEAR}
    Execute Javascript           window.scroll(0,1000)
    Sleep                        2 
    Double Click Element         ${PREF_ALL}
    Double Click Element         ${DISCOUNT}
    Sleep                        2 
    Click Element                //*[@id="register"]
    Close Browser
