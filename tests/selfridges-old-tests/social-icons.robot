*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary


Suite Setup       Run Keywords 
Suite Teardown    Run Keywords     Close Browser 



*** Variables ***
${URL}        https://www.selfridges.com/GB/en/
${BROWSER}    chrome 
${YT_BOX}     //*[@id="main"]
${COOKIES}    /html/body/section/div/a[2]

# URL VARS
${YT_URL}          https://www.youtube.com/channel/UCvXRE9A1im1wsmfjYzds_9Q?sub_confirmation=1
${WECHAT_URL}      https://www.selfridges.com/GB/en/features/int/wechat/
${WEIBO_URL}       https://www.weibo.com/selfridgesuk
${FB_URL}          https://www.facebook.com/selfridges
${INSTA_URL}       https://www.instagram.com/accounts/login/?next=/theofficialselfridges/
${TWITTER_URL}     https://twitter.com/SELFRIDGES
${PINTREST_URL}    https://www.pinterest.com/selfridges/


*** Test Cases ***


Click FaceBook Icon
    Click Facebook Icon

Click Instagram Icon
    Click Instagram Icon


Click Pintrest Icon
    Click Pintrest Icon

Click Twitter Icon
    Click Twitter Icon


Click YouTube Icon
    Click yt Icon


Click Weibo Icon
    Click weibo icon 



Click WeChat Icon
    Click wechat icon




*** Keywords ***

Click Facebook Icon
    Open Browser               ${URL}                                             ${BROWSER}
    Sleep                      3
    Execute Javascript         window.scrollTo(0, 9000) 
    sleep                      1 
    Maximize Browser Window
    Sleep                      2 
    Click Element              //*[@id="1507476264"]/div/div[3]/div/ul/li[1]/a
    Sleep                      2
    Location Should Be         ${FB_URL}
    Sleep                      3 
    Close Browser 


Click Instagram Icon
    Open Browser               ${URL}                                             ${BROWSER}
    Sleep                      3
    Execute Javascript         window.scrollTo(0, 9000) 
    Maximize Browser Window
    Sleep                      5 
    Click Element              //*[@id="1507476264"]/div/div[3]/div/ul/li[2]/a
    Sleep                      3
    Select Window              locator=NEW
    Location Should Be         ${INSTA_URL}
    Close Browser


Click Pintrest Icon
    Open Browser               ${URL}                                             ${BROWSER}
    Sleep                      3
    Execute Javascript         window.scrollTo(0, 9000)
    Maximize Browser Window
    Sleep                      1
    Click Element              //*[@id="1507476264"]/div/div[3]/div/ul/li[3]/a
    Sleep                      2
    Select Window              locator=NEW
    Location Should Be         ${PINTREST_URL}
    Sleep                      2 
    Close Browser 



Click Twitter Icon
    Open Browser               ${URL}                                             ${BROWSER}
    Sleep                      3
    Execute Javascript         window.scrollTo(0, 9000)
    Maximize Browser Window
    Sleep                      1 
    Click Element              //*[@id="1507476264"]/div/div[3]/div/ul/li[4]/a
    Select Window              locator=NEW
    Location Should Be         ${TWITTER_URL}
    Sleep                      1 
    Close Browser 



Click yt Icon
    Open Browser               ${URL}                                             ${BROWSER}
    Sleep                      3
    Execute Javascript         window.scrollTo(0, 9000)
    Sleep                      1
    Maximize Browser Window
    Sleep                      1 
    Click Element              //*[@id="1507476264"]/div/div[3]/div/ul/li[5]/a
    Select Window              locator=NEW
    Location Should Be         ${YT_URL}
    Sleep                      1                                                  
    Close Browser 


Click weibo icon
    Open Browser               ${URL}                                             ${BROWSER}
    Sleep                      3
    Execute Javascript         window.scrollTo(0, 9000)
    Sleep                      1
    Maximize Browser Window
    Sleep                      1 
    Click Element              //*[@id="1507476264"]/div/div[3]/div/ul/li[6]/a
    Select Window              locator=NEW
    Location Should Be         ${WEIBO_URL}
    Sleep                      1                                                  
    Close Browser 


Click wechat icon
    Open Browser               ${URL}                                             ${BROWSER}
    Sleep                      3
    Execute Javascript         window.scrollTo(0, 9000)
    Sleep                      1
    Maximize Browser Window
    Sleep                      1 
    Click Element              //*[@id="1507476264"]/div/div[3]/div/ul/li[7]/a
    Select Window              locator=NEW
    Location Should Be         ${WECHAT_URL}
    Sleep                      1                                                  
    Close Browser 