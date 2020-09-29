*** Settings ***
Library    SeleniumLibrary


Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser 




*** Variables ***
${URL}          https://www.jdsports.co.uk/
&{BROWSER}      chrome=chrome                     firefox=firefox 





*** Test Cases ***

blank password login
    blank password


blank email login 
    blank email

*** Keywords ***
blank password
    Open Browser               ${URL}                       ${BROWSER.chrome}
    Maximize Browser Window
    Sleep                      6
    Click Link                 //*[@id="usermenu"]/a[1] 
    Input Text                 //*[@id="username"]          johndoe@gmail.com 
    Click Button               //*[@id="doLogin"]
    Sleep                      5 
    Page Should Contain        //*[@id="popupMessage"]     
    Sleep                      3 


blank email
    Open Browser               ${URL}                       ${BROWSER.chrome}
    Maximize Browser Window
    Sleep                      6
    Click Link                 //*[@id="usermenu"]/a[1] 
    Input Text                 //*[@id="password"]          password12345
    Sleep                      3 
    Page Should Contain        //*[@id="popupMessage"]
    Close Browser 
