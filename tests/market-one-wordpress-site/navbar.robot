*** Settings ***
Library    SeleniumLibrary



Suite Setup       Run Keywords 
Suite Teardown    Run Keywords     Close Browser




*** Variables ***
${URL}         https://www.marketone.dev.cc/ 
&{BROWSER}     chrome=chrome                      firefox=firefox
${ABOUT_US}    xpath=//*[@id="menu-item-40"]/a
${SERVICES}    xpath=//*[@id="menu-item-39"]/a
${BLOG}        xpath=//*[@id="menu-item-45"]/a
${CONTACT}     xpath=//*[@id="menu-item-49"]/a



*** Test Cases ***
About us link should redirect to about page firefox
    Open Browser               ${URL}                                    ${BROWSER.firefox}
    Maximize Browser Window
    Sleep                      1 
    Click Link                 ${ABOUT_US}
    Sleep                      3
    Location Should Be         https://www.marketone.dev.cc/about-us/
    Close Browser


About us link should redirect to about page chrome
    Open Browser               ${URL}                                    ${BROWSER.chrome}
    Maximize Browser Window
    Sleep                      1 
    Click Link                 ${ABOUT_US}
    Sleep                      3
    Location Should Be         https://www.marketone.dev.cc/about-us/
    Close Browser


Services page should redirect to services page firefox
    Open Browser               ${URL}                                    ${BROWSER.firefox}
    Maximize Browser Window
    Sleep                      1 
    Click Link                 ${SERVICES}
    Sleep                      3
    Location Should Be         https://www.marketone.dev.cc/services/
    Close Browser


Services page should redirect to services page chrome
    Open Browser               ${URL}                                    ${BROWSER.chrome}
    Maximize Browser Window
    Sleep                      1 
    Click Link                 ${SERVICES}
    Sleep                      3
    Location Should Be         https://www.marketone.dev.cc/services/
    Close Browser




blog page should redirect to blog page firefox
    Open Browser               ${URL}                                ${BROWSER.firefox}
    Maximize Browser Window
    Sleep                      1 
    Click Link                 ${BLOG}
    Sleep                      3
    Location Should Be         https://www.marketone.dev.cc/blog/
    Close Browser


blog page should redirect to blog page chrome
    Open Browser               ${URL}                                ${BROWSER.chrome}
    Maximize Browser Window
    Sleep                      1 
    Click Link                 ${BLOG}
    Sleep                      3
    Location Should Be         https://www.marketone.dev.cc/blog/
    Close Browser



contact page should redirect to contact page firefox
    Open Browser               ${URL}                                   ${BROWSER.firefox}
    Maximize Browser Window
    Sleep                      1 
    Click Link                 ${CONTACT}
    Sleep                      3
    Location Should Be         https://www.marketone.dev.cc/contact-us/
    Close Browser


blog page should redirect to blog page chrome
    Open Browser               ${URL}                                   ${BROWSER.chrome}
    Maximize Browser Window
    Sleep                      1 
    Click Link                 ${CONTACT}
    Sleep                      3
    Location Should Be         https://www.marketone.dev.cc/contact-us/
    Close Browser

