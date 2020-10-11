*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary



Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser 



*** Variables ***
${URL}    https://www.selfridges.com/GB/en/webapp/wcs/stores/servlet/UserRegistrationForm?currPage=__currPage__&storeId=10052&&editRegistration=Y&bct=&langId=-1&catalogId=16151


${EMAIL_FIELD}       //*[@id="logonId"] 
${PASSWORD_FIELD}    //*[@id="logonPassword"]
${SUBMIT_BTN}        //*[@id="sign_in"]/div[2]/div/div/form/fieldset/button

&{BROWSER}    chrome=chrome    firefox=firefox




*** Test Cases ***
Enter an email with no password
    test-case-1



Enter a password with no email
    test-case-2 



Enter nothing at all
    test-case-3


*** Keywords ***
test-case-1
    Open Browser      ${URL}            ${BROWSER.chrome}
    Sleep             1 
    Input Text        ${EMAIL_FIELD}    johndoe@gmail.com
    Click Button      ${SUBMIT_BTN}
    Sleep             5 
    Close Browser 




test-case-2
    Open Browser     ${URL}               ${BROWSER.chrome}
    Sleep            1 
    Input Text       ${PASSWORD_FIELD}    password12345
    Click Button     ${SUBMIT_BTN} 
    Sleep            3 
    Close Browser


test-case-3
    Open Browser     ${URL}           ${BROWSER.chrome}
    Sleep            1
    Click Button     ${SUBMIT_BTN}
    Sleep            2 
    Close Browser