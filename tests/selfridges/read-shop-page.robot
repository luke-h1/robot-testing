*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary



Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser 



*** Variables ***
${URL}           https://www.selfridges.com/GB/en/
${BROWSER}       firefox
${SECOND_URL}    https://www.selfridges.com/GB/en/features/articles/selfridges-meets/christopher-and-graeme-raeburn/?cm_re=homepage-_-hero-_-together-now-christopher-and-graeme-raeburn
${TEXT}          //*[@id="1123547419"]/div/div[4]/div/div/h1/span

*** Test Cases ***

Click Read And Shop
    Click Read And Shop 

Read & Shop Page Should Contain Certain Image
    Ensure It Contains Image    


Ensure "TOGETHER NOW" is rendered
    Ensure Text Is Rendered





*** Keywords ***

Click Read And Shop
    Open Browser               ${URL}                     ${BROWSER}
    Maximize Browser Window
    sleep                      2 
    Click Element              //*[@id="0471933796"]/a
    Sleep                      2 
    Close Browser


Ensure It Contains Image
    Open Browser                 ${SECOND_URL}                              ${BROWSER}
    Maximize Browser Window
    Sleep                        1 
    Page Should Contain Image    //*[@id="0161619921"]/div/div/div/a/img
    Close Browser


Ensure Text Is Rendered
    Open Browser                 ${SECOND_URL}    ${BROWSER}
    Maximize Browser Window
    Sleep                        1 
    Element Should Be Visible    ${TEXT}