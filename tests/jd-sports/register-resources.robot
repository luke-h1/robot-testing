*** Settings ***
Library    SeleniumLibrary




*** Variables ***
${BROWSER}                 chrome
${SITE_URL}                https://www.jdsports.co.uk/
${MY_ACCOUNT_BTN}          xpath=//*[@data-e2e='homePage-userMenu-myAccount']
${REGISTER_FOR_ACCOUNT}    xpath=//*[@data-e2e='login-register-registerButton']
${COOKIE_MSG}              xpath=//*[@class='cookie-msg__close']
${FIRST_NAME_REGISTER}     xpath=//*[@data-e2e='register-registerForm-firstName']
${SURNAME_REGISTER}        xpath=//*[@data-e2e='register-registerForm-lastName'] 
${EMAIL_REGISTER}          xpath=//*[@data-e2e='register-registerForm-email'] 
${TELEPHONE_REGISTER}      xpath=//*[@data-e2e='register-registerForm-phone']
${PASSWORD_REGISTER}       xpath=//*[@data-e2e='register-registerForm-password'] 
${PASSWORD_CONFIRM}        xpath=//*[@data-e2e='register-registerForm-confirmPassword']
${COUNTRY_DROPDOWN}        xpath=//*[@id='country']
${REGISTER_CONFIRM_BTN}    xpath=//*[@data-e2e='register-registerForm-registerButton'] 
${ERROR_MSG}               xpath=//*[@id='popupMessage']