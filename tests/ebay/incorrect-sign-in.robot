*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary



Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser 



*** Variables ***
&{SITE_URL}    prod=https://www.ebay.com/
&{BROWSER}     chromestable=chrom            firefoxstable=firefox
${SIGN_IN_SECTION} //*[@id="gh-ug"]/a



*** Test Cases ***
Sign In User With incorrect details
    Sign In



*** Keywords ***
Sign In
    Open Browser                 ${SITE_URL.prod}      ${BROWSER.firefoxstable}
    Sleep                        1s 
    Element Should Be Visible    ${SIGN_IN_SECTION}
    Sleep                        1s 
    # captcha issue
