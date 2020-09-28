*** Settings ***
Library    SeleniumLibrary

Suite Setup       Run Keywords 
Suite Teardown    Run Keywords     Close Browser



*** Variables ***
${URL}        https://www.marketone.dev.cc/
&{BROWSER}    chrome=chrome                    firefox=firefox



*** Test Cases ***

Click find out more button should redirect to services
    Open Browser               ${URL}                                      ${BROWSER.chrome}    
    Maximize Browser Window
    Execute Javascript         window.scrollTo(0, 3000)
    Sleep                      1 
    Click Element              //*[@id="ribbon"]/div/div/div/div/button
    Sleep                      1 
    Location Should Be         https://www.marketone.dev.cc/services/
    Close Browser 
    Open Browser               ${URL}                                      ${BROWSER.chrome}    
    Maximize Browser Window
    Sleep                      1 
    Click Element              //*[@id="intro-section"]/button 
    Sleep                      1 
    Location Should Be         https://www.marketone.dev.cc/about-us/
    Close Browser 


