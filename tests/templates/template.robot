*** Settings ***
Library     OperatingSystem
Library     SeleniumLibrary
Resource    YOUR-CUSTOM-VARS-HERE.robot  
 # files that you build (keywords, variables etc.)
# Instead of resources you can use variables in the same file (like below)
# if writing a large test or want to .gitignore some sensitive vars then it's worth it to use Resource instead
# DOCS: https://robotframework.org/robotframework/




# SUITE SETUP
Suite Setup       Run Keywords    
Suite Teardown    Run Keywords    Close Browser    


*** Variables ***
# add custom variables here
# i.e.
${SiteUrl}    http://localhost:3000
${chrome}     Chrome 
${firefox}    firefox                  
${button}


*** Test Cases ***
# tests to be performed
# i.e.

Navigate To Home Page & Click Button


*** Keywords ***
# your custom keywords here
# i.e.
Navigate To Home Page & Click Button
    Open Browser      ${SiteUrl}    ${chrome} 
    Click Element     id=name
    sleep 2 
    Close Browser 
