*** Settings *** 
Library    SeleniumLibrary


*** Variables *** 
${URL}         https://www.marketone.dev.cc/ 
&{BROWSER}     chrome=chrome                      firefox=firefox



*** Test Cases *** 



page should contain about image
    Open Browser                ${URL}    ${BROWSER.chrome}
    Maximize Browser Window 
    Sleep                       1 
    Execute Javascript          window.scrollTo(0, 1200) 
    Sleep                       1 
    Page Should Contain Image   xpath=//*[@id="story"]/div/div/div/div[1]/div/img
    Close Browser



page should contain team member images 
    Open Browser                ${URL}   ${BROWSER.chrome}
    Maximize Browser Window 
    Sleep                       1 
    Execute Javascript          window.scrollTo(0, 2200)  
    Sleep                       1 
    Page Should Contain Image   xpath=//*[@id="team"]/div/div/div[2]/div[1]/div/div[1]/img
    Page Should Contain Image   xpath=//*[@id="team"]/div/div/div[2]/div[2]/div/div[1]/img
    Page Should Contain Image   xpath=//*[@id="team"]/div/div/div[2]/div[3]/div/div[1]/img 
    Sleep                       1 
    Close Browser