*** Variables ***
# config
${BROWSER}     chrome
${BASE_URL}    https://www.selfridges.com/GB/en/webapp/wcs/stores/servlet/UserRegistrationForm?currPage=__currPage__&storeId=10052&&editRegistration=Y&bct=&langId=-1&catalogId=16151



# vars

${TITLE}               xpath=//*[@id="dk_container_personTitle"]/a                 
${MR}                  xpath=//*[@id="dk_container_personTitle"]/div/ul/li[3]/a    
${FIRSTNAME}           xpath=//*[@id="firstName"]
${LASTNAME}            xpath=//*[@id="lastName"] 
${EMAIL}               xpath=//*[@id="registerLogonId"]
${CHECKBOX}            xpath=//*[@id="marketingOptIn"]/div[1]/div[1]/label
${PASSWORD}            xpath=//*[@id="registerLogonPassword"]
${PASSWORD_CONFIRM}    xpath=//*[@id="logonPasswordVerify"] 
${CREATE_BTN}          xpath=//*[@id="Register"]/button
${SUBMIT_BTN}          xpath=//*[@id="Register"]/button
# input data
&{REGISTER_USER}    firstname=bob    lastname=bob    email=johndoe@email.com    password=password123    confirmpassword=password123



&{BAD_EMAIL}    firstname=john    lastname=bob    email=bob@bob@bob.email&.com    password=Password12345    confirmpassword=Password12345