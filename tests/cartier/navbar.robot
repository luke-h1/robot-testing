*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary


Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser



*** Variables ***
${SITE_URL}    https://www.cartier.com/
${BROWSER}     chrome 
${TITLE}       Cartier® Official Website - Jeweler and Watchmaker since 1847



# JEWELERY VARS
# TODO: CLEAN THIS FILE UP

${NAV-JEWEL}           xpath=//*[@id="fl-header"]/div/div[3]/div[1]/nav/div[2]/div/ul/li[1]/a
${NAV-JEWEL--IMG-1}    xpath=//*[@id="fl-header"]/div/div[3]/div[1]/nav/div[2]/div/ul/li[1]/div[2]/div/div/div/div[3]/div[1]/div[2]/div/div/div[1]/a/div[1]/img
${NAV-JEWEL--IMG-2}    xpath=//*[@id="fl-header"]/div/div[3]/div[1]/nav/div[2]/div/ul/li[1]/div[2]/div/div/div/div[3]/div[1]/div[2]/div/div/div[2]/a/div[1]/img
${NAV-JEWEL--IMG-3}    xpath=//*[@id="fl-header"]/div/div[3]/div[1]/nav/div[2]/div/ul/li[1]/div[2]/div/div/div/div[3]/div[1]/div[2]/div/div/div[3]/a/div[1]/img
${NAV-JEWEL--IMG-4}    xpath=//*[@id="fl-header"]/div/div[3]/div[1]/nav/div[2]/div/ul/li[1]/div[2]/div/div/div/div[3]/div[1]/div[2]/div/div/div[4]/a/div[1]/img
${NAV-JEWEL--IMG-5}    xpath=//*[@id="fl-header"]/div/div[3]/div[1]/nav/div[2]/div/ul/li[1]/div[2]/div/div/div/div[3]/div[1]/div[2]/div/div/div[5]/a/div[1]/img
${NAV-JEWEL--IMG-6}    xpath=//*[@id="fl-header"]/div/div[3]/div[1]/nav/div[2]/div/ul/li[1]/div[2]/div/div/div/div[3]/div[1]/div[2]/div/div/div[6]/a/div[1]/img

*** Test Cases ***

Ensure Jewelery items render properly
    jewellery 




*** Keywords ***
jewellery
    Open Browser                 ${SITE_URL}             ${BROWSER}
    Title Should Be              ${TITLE}
    Sleep                        5                       
    Mouse Over                   ${NAV-JEWEL}
    Sleep                        2
    Page Should Contain          LOVE
    Page Should Contain          Juste un Clou
    Page Should Contain          Clash de Cartier
    Page Should Contain          Trinity
    Page Should Contain          Panthère de Cartier
    Page Should Contain          Diamond Collection
    Page Should Contain Image    ${NAV-JEWEL--IMG-1} 
    Page Should Contain Image    ${NAV-JEWEL--IMG-2} 
    Page Should Contain Image    ${NAV-JEWEL--IMG-3} 
    Page Should Contain Image    ${NAV-JEWEL--IMG-4} 
    Page Should Contain Image    ${NAV-JEWEL--IMG-5} 
    Page Should Contain Image    ${NAV-JEWEL--IMG-6} 


