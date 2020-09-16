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
   Open Browser       ${URL}                                                 ${BROWSER}
   sleep              3
   Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[1]/a
   sleep              6
   Title Should Be    New In | Selfridges
   Close Browser 


Click Women Section Icon
   Open Browser       ${URL}                                                 ${BROWSER}
   sleep              3
   Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[2]/a
   sleep              3 
   Title Should Be    Women's Designer Fashion | Selfridges
   Close Browser 


Click Mens Section Icon
   Open Browser       ${URL}                                                  ${BROWSER}
   sleep              3
   Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[3]/a 
   Sleep              3 
   Title Should Be    Men's Designer Fashion | Selfridges 
   Close Browser 


Click Bags Section Icon
   Open Browser       ${URL}                                                         ${BROWSER}
   Sleep              3 
   Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[4]/a
   Sleep              3 
   Title Should Be    Designer Bags - Backpacks, Gucci, Prada & more | Selfridges
   Close Browser 


Click Shoes Section Icon
    Open Browser       ${URL}                                                        ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[5]/a
    Sleep              3 
    Title Should Be    Designer Shoes - Men's Trainers, Heels & more | Selfridges
    Close Browser 

Click Beauty Section Icon
    Open Browser       ${URL}                                                          ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[6]/a 
    Sleep              3 
    Title Should Be    Beauty - Make-up, Skincare, Gift Sets and more | Selfridges 
    Close Browser 



Click Kids Section Icon
    Open Browser       ${URL}                                                        ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[7]/a 
    Title Should Be    Kids - Toys, baby clothes, kids shoes & more | Selfridges 
    Close Browser 



Click Home And Tech Section Icon
    Open Browser       ${URL}                                                   ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[8]/a 
    Title Should Be    Home & Tech - Headphones, Candles & more | Selfridges
    Close Browser      



Click FoodHall Section Icon
    Open Browser       ${URL}                                                        ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[9]/a 
    Title Should Be    Selfridges Foodhall - Hampers, Chocolates, Wines & Spirits
    Close Browser      


Click Jewellery Section Icon
    Open Browser       ${URL}                                                             ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[10]/a 
    Title Should Be    Jewellery & Watches - Fine Jewellery, Fine Watches | Selfridges
    Close Browser      

Click Gifts Section Icon
    Open Browser       ${URL}                                                   ${BROWSER}
    Sleep              3 
    Click Element      //*[@id="752512938"]/div/div/div/div/div/ul/li[11]/a 
    Title Should Be    Gifts | Info | Selfridges
    Close Browser      


Click Project Earth Section Icon
      Open Browser          ${URL}                                                         ${BROWSER}
      Sleep                 3 
      Click Element         //*[@id="752512938"]/div/div/div/div/div/ul/li[12]/a 
      Title Should Be       Project Earth | Sustainability & Ethical Shopping | Selfridges
      Close Browser      






*** Keywords ***

