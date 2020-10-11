*** Settings ***
Library    SeleniumLibrary



*** Variables ***

${MY_ACCOUNT_BTN}    xpath=//*[@data-e2e='homePage-userMenu-myAccount']
${EMAIL_LOGIN}       xpath=//*[@data-e2e='login-loginForm-email']
${PASSWORD}          xpath=//*[@data-e2e='login-loginForm-password'] 
${SUBMIT}            xpath=//*[@data-e2e='login-loginForm-submitBtn'] 
${ERROR_DIV}         xpath=//*[@id='popupMessage'] 
${COOKIE_MSG}        xpath=//*[@class='cookie-msg__close']
