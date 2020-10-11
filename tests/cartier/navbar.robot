*** Settings ***
Library     OperatingSystem
Library     SeleniumLibrary
Resource    ./navbar-resources.robot 

Suite Setup       Run Keywords
Suite Teardown    Run Keywords    Close Browser



*** Variables ***




*** Test Cases ***
hover over nav-items
    hover over nav-items keyword



*** Keywords ***
hover over nav-items keyword
    Open Browser    ${SITE_URL}              ${BROWSER}
    Sleep           1 
    Mouse Over      ${JEWELRY_ITEM}
    Sleep           0.5 
    Mouse Over      ${WATCHES_ITEM}
    Sleep           0.5
    Mouse Over      ${ENGAGEMENT_ITEM}
    Sleep           0.5
    Mouse Over      ${LEATHER-GOODS_ITEM}
    Sleep           0.5
    Mouse Over      ${FRAGRANCES_ITEM}
    Sleep           0.5
    Mouse Over      ${GIFTS_ITEM}
    Sleep           0.5
    Mouse Over      ${SERVICES_ITEM}
    Sleep           0.5
    Mouse Over      ${MAISON_ITEM}
    Sleep           0.5
    Mouse Over      ${NEWS_ITEM}
    Close Browser 