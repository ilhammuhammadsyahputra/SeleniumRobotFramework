*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            https://sepatucompass.com/login
${name}           Ilham Muhammad Syah Putra (IMS)
${email}          saputra5396@gmail.com
${mobileNumber}   085265545599
${DOB}            05031996
${password}       Ilham1177


*** Test Cases ***
Registration_And_Login
    Open Browser To Compass Website
    Register User
    Login User

*** Keywords ***
Open Browser To Compass Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window



Register User
    Go To    ${URL}
    wait until page contains element        xpath://div[contains(@class,'form-wrapper')]//button[contains(@class,'btn-block active')]     20 seconds
    Click Element     xpath://div[contains(@class,'form-wrapper')]//button[contains(@class,'btn-block active')]
    Input Text        id:name                 ${name}
    Input Text        id:email                ${email}
    Input Text        id:mobileNumber         ${mobileNumber}
    Input Text        id:dob                  ${DOB}
    Input Text        id:password             ${password}
    Select Checkbox   id:subscribe
    Click Button      xpath:(//button[@type='submit'])[2]

Login User
    wait until page contains element        id:email        15 seconds
    Input Text        id:email                 ${email}
    Input Text        id:password              ${password}
    Click Button      xpath://body/div[@id='__next']/main[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/form[1]/div[1]/div[4]/button[1]

