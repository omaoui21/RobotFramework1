*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}              https://www.shemsyvillage.com
${BROWSER}          Edge
${WEBDRIVER_PATH}   ${CURDIR}/msedgedriver.exe

*** Test Cases ***
Enter to Shemsy
    Open Browser       ${URL}    ${BROWSER}    executable_path=${WEBDRIVER_PATH}
    Maximize Browser Window
    Input Text         name=username    PJB
    Input Text         name=password    xxx
    Sleep      2
    Click Button       xpath=//input[@type='submit' and @value='CONNEXION']
    Sleep    5
    Click Element      xpath=//a[@class='dropdown-toggle nav-link']
    Sleep    3
    Click Element    xpath=//a[@href='logout.php']
    Sleep    3
    Close Browser
