*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary 



Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser



*** Variables ***
${URL}        https://www.selfridges.com/GB/en/
${BROWSER}    chrome 
${F_NAME}     luke 
${L_NAME}     howsam 
${EMAIL}      randomemail@gmail.com
${PWD}        secretpassword1225^



*** Test Cases ***

Create an account
    Create a new selfridges account 









*** Keywords ***

Create a new selfridges account
    Open Browser               ${URL}                                                ${BROWSER}
    Maximize Browser Window
    sleep                      2 
    Click Link                 class:accountnavlink
    sleep                      2                                                     
    Click Element              //*[@id="myaccountnavInner"]/ul/li/a
    sleep                      2                                                     
    Click Element              //*[@id="Register"]/button
    sleep                      2 
    Click Element              //*[@id="dk_container_personTitle"]/a
    Sleep                      2 
    Click Element              //*[@id="dk_container_personTitle"]/div/ul/li[4]/a
    Sleep                      2                                                     
    Input Text                 //*[@id="firstName"]                                  ${F_NAME}
    Sleep                      1 
    Input Text                 //*[@id="lastName"]                                   ${L_NAME}
    Sleep                      1 
    Input Text                 //*[@id="registerLogonId"]                            ${EMAIL}
    Sleep                      1 
    Click Element              //*[@id="marketingOptIn"]/div[1]/div[2]/label
    Sleep                      1
    Input Text                 //*[@id="registerLogonPassword"]                      ${PWD} 
    Sleep                      1 
    Input Text                 //*[@id="logonPasswordVerify"]                        ${PWD}
    Sleep                      1 
    Click Element              //*[@id="Register"]/button