*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary 




Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser




*** Variables ***
${URL}        https://www.selfridges.com/GB/en/
${BROWSER}    chrome 




*** Test Cases ***
Click New In Icon
    click new in icon



Click Women Section Icon
    click womens icon

Click Mens Section Icon
    click mens icon


Click Bags Section Icon
    click bags icon

Click Shoes Section Icon
    click shoes icon

Click Beauty Section Icon
    click beauty icon


Click Kids Section Icon
    click kids icon



Click Home And Tech Section Icon
    click home-tech icon




Click FoodHall Section Icon
    click foodhall icon




Click Jewellery Section Icon
    click jewellery icon


Click Gifts Section Icon
    click gifts icon



Click Project Earth Section Icon
    click project-earth icon







*** Keywords ***

click new in icon
    Open Browser       ${URL}                                                 ${BROWSER}
    sleep              3
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[1]/a
    sleep              6
    Title Should Be    New In | Selfridges
    Close Browser 


click womens icon
    Open Browser       ${URL}                                                 ${BROWSER}
    sleep              3
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[2]/a
    sleep              3 
    Title Should Be    Women's Designer Fashion | Selfridges
    Close Browser 


click mens icon
    Open Browser       ${URL}                                                  ${BROWSER}
    sleep              3
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[3]/a 
    Sleep              3 
    Title Should Be    Men's Designer Fashion | Selfridges 
    Close Browser 


click bags icon
    Open Browser       ${URL}                                                         ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[4]/a
    Sleep              3 
    Title Should Be    Designer Bags - Backpacks, Gucci, Prada & more | Selfridges
    Close Browser 


click shoes icon
    Open Browser       ${URL}                                                        ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[5]/a
    Sleep              3 
    Title Should Be    Designer Shoes - Men's Trainers, Heels & more | Selfridges
    Close Browser 

click beauty icon
    Open Browser       ${URL}                                                          ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[6]/a 
    Sleep              3 
    Title Should Be    Beauty - Make-up, Skincare, Gift Sets and more | Selfridges 
    Close Browser 

click kids icon
    Open Browser       ${URL}                                                        ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[7]/a 
    Title Should Be    Kids - Toys, baby clothes, kids shoes & more | Selfridges 
    Close Browser 

click home-tech icon
    Open Browser       ${URL}                                                   ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[8]/a 
    Title Should Be    Home & Tech - Headphones, Candles & more | Selfridges
    Close Browser      

click foodhall icon
    Open Browser       ${URL}                                                        ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[9]/a 
    Title Should Be    Selfridges Foodhall - Hampers, Chocolates, Wines & Spirits
    Close Browser      

click jewellery icon
    Open Browser       ${URL}                                                             ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[10]/a 
    Title Should Be    Jewellery & Watches - Fine Jewellery, Fine Watches | Selfridges
    Close Browser      


click gifts icon
    Open Browser       ${URL}                                                   ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[11]/a 
    Title Should Be    Gifts | Info | Selfridges
    Close Browser      


click project-earth icon
    Open Browser       ${URL}                                                            ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[12]/a 
    Title Should Be    Project Earth | Sustainability & Ethical Shopping | Selfridges
    Close Browser      