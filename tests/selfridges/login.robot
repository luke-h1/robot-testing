*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary 



Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser




*** Variables ***
${URL}          https://www.selfridges.com/GB/en/
${BROWSER}      chrome 
${EMAIL}        randomemail@gmail.com
${PWD}          supersecretpassword1235^
${ERROR_STR}    Oops! You've entered an incorrect email address or password. Please try again or get a new password by    clicking on 'Forgotten your password?'. For your security, you will be unable to log on after 12 unsuccessful attempts.    




*** Test Cases ***
Login
    Login To Account






*** Keywords ***

Login To Account
    Open Browser           ${URL}                                                     ${BROWSER}
    sleep                  3 
    Click Link             class:accountnavlink
    sleep                  3                                                          
    Click Element          //*[@id="myaccountnavInner"]/ul/li/a
    sleep                  3                                                          
    Input Text             //*[@id="logonId"]                                         ${EMAIL}
    sleep                  3 
    Input Text             //*[@id="logonPassword"]                                   ${PWD}
    sleep                  3 
    Click Element          //*[@id="sign_in"]/div[2]/div/div/form/fieldset/button 
    Sleep                  1 
    Page Should Contain    ${ERROR_STR}