*** Settings ***
Library    SeleniumLibrary 

Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser





*** Variables ***
${SITE_URL}    https://www.flannels.com/men 
&{BROWSER}     chrome=chrome                    firefox=firefox 


# navbar items
${CURRENCY_ITEM}    xpath=//*[@id="currencyLanguageSelector"]/div
${ITEM_1}           xpath=//*[@id="lnkTopLevelMenu_1377962"] 
${ITEM_2}           xpath=//*[@id="lnkTopLevelMenu_1377969"] 
${ITEM_3}           xpath=//*[@id="lnkTopLevelMenu_1378023"]
${ITEM_4}           xpath=//*[@id="lnkTopLevelMenu_1378076"]
${ITEM_5}           xpath=//*[@id="lnkTopLevelMenu_1378119"] 
${ITEM_6}           xpath=//*[@id="lnkTopLevelMenu_1378186"]



*** Test Cases ***
Hover states on navbar should word
    hover


nav items should redirect to correct page
    redirect


*** Keywords ***
hover
    Open Browser    ${SITE_URL}         ${BROWSER.chrome} 
    Sleep           2                   
    Mouse Over      ${CURRENCY_ITEM}
    Sleep           1 
    Mouse Over      ${ITEM_1} 
    Sleep           1 
    Mouse Over      ${ITEM_2} 
    Sleep           1 
    Mouse Over      ${ITEM_3} 
    Sleep           1 
    Mouse Over      ${ITEM_4} 
    Sleep           1 
    Mouse Over      ${ITEM_5} 
    Sleep           1 
    Mouse Over      ${ITEM_6} 
    Sleep           1 


redirect
    # First item
    Open browser               ${SITE_URL}                                   ${BROWSER.chrome}     
    Maximize Browser Window
    Sleep                      2 
    Click Link                 ${ITEM_1} 
    Sleep                      3 
    Location Should Be         https://www.flannels.com/men/new-arrivals 
    Close Browser 
    # Second item
    Open browser               ${SITE_URL}                                   ${BROWSER.chrome}     
    Maximize Browser Window
    Sleep                      2 
    Click Link                 ${ITEM_2} 
    Sleep                      3 
    Location Should Be         https://www.flannels.com/men 
    Close Browser 
    # Third item
    Open browser               ${SITE_URL}                                   ${BROWSER.chrome} 
    Maximize Browser Window
    Sleep                      2 
    Click Link                 ${ITEM_3} 
    Sleep                      3 
    Location Should Be         https://www.flannels.com/women
    Close Browser 
    # Fourth item
    Open browser               ${SITE_URL}                                   ${BROWSER.chrome} 
    Maximize Browser Window
    Sleep                      2 
    Click Link                 ${ITEM_4} 
    Sleep                      3 
    Location Should Be         https://www.flannels.com/kids
    Close Browser 
    # Fifth item
    Open browser               ${SITE_URL}                                   ${BROWSER.chrome} 
    Maximize Browser Window
    Sleep                      2 
    Click Link                 ${ITEM_5} 
    Sleep                      3 
    Location Should Be         https://www.flannels.com/designers
    Close Browser              
    # Final item
    Open browser               ${SITE_URL}                                   ${BROWSER.chrome} 
    Maximize Browser Window
    Sleep                      2 
    Click Link                 ${ITEM_6} 
    Sleep                      3 
    Location Should Be         https://www.flannels.com/clearancehome
    Close Browser              