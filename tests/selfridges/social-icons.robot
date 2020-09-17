*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Library    Selenium2Library


Suite Setup       Run Keywords 
Suite Teardown    Run Keywords     Close Browser 



*** Variables ***
${URL}        https://www.selfridges.com/GB/en/
${BROWSER}    chrome 



*** Test Cases ***

Click Instagram Icon
    Click Instagram Icon




*** Keywords ***
Click Instagram Icon
    Open Browser          ${URL}                                                                    ${BROWSER}
    Sleep                 1
    Execute Javascript    window.scrollTo(0, 5000) 
    Sleep                 5 
    Click Element         //*[@id="1507476264"]/div/div[3]/div/ul/li[2]/a
    Sleep                 3
    Select Window         locator=NEW
    Location Should Be    https://www.instagram.com/accounts/login/?next=/theofficialselfridges/
