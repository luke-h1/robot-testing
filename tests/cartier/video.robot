*** Settings ***
Library    OperatingSystem 
Library    SeleniumLibrary


Suite Setup       Run Keywords 
Suite Teardown    Run Keywords     Close Browser


*** Variables ***
${SITE_URL}            https://www.cartier.co.uk/
${BROWSER}             chrome
${RAMI_MALEK_VIDEO}    //*[@id="video-slideshow-example"]/div/div/video


*** Test Cases ***


Ensure Video Is Visible
    videoVisible



*** Keywords ***
videoVisible
    Open Browser                 ${SITE_URL}            ${BROWSER}
    Sleep                        5 
    Element Should Be Visible    ${RAMI_MALEK_VIDEO}
