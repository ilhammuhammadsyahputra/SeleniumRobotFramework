*** Settings ***
Library           SeleniumLibrarys

*** Variables ***
${BROWSER}        Chrome
${URL}            https://sepatucompass.com/login
${email}          saputra5396@gmail.com
${password}       Ilham1177


*** Test Cases ***
Registration_And_Login
    Open Browser To Compass Website
    Login User to Shopping

*** Keywords ***
Open Browser To Compass Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Login User to Shopping
    #Memberi Jeda 15 Seconds
    wait until page contains element        id:email        15 seconds
    #Input Email
    Input Text        id:email                 ${email}
    #Input Password
    Input Text        id:password              ${password}
    #Click Login Button
    Click Button      xpath://body/div[@id='__next']/main[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[2]/form[1]/div[1]/div[4]/button[1]
    #Memeberi Jeda 15 Seconds
    wait until page contains element        xpath://a[contains(text(),'Shop')]        15 seconds
    #Click Button Nav Menu Shop
    Click Element     xpath://a[contains(text(),'Shop')]
    #Memeberi Jeda 15 Seconds
    wait until page contains element        xpath://h4[contains(text(),'Retrograde Slip On Kawung Cream')]        15 seconds
    #Select Product dengan nama "Retrograde Slip On Kawung Cream"
    Click Element     xpath://h4[contains(text(),'Retrograde Slip On Kawung Cream')]
    #Memeberi Jeda 15 Seconds
    wait until page contains element        xpath:/html[1]/body[1]/div[1]/main[1]/section[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[9]/button[1]/span[1]       15 seconds
    #Select Siza Chart
    Click Element     xpath:/html[1]/body[1]/div[1]/main[1]/section[1]/div[1]/div[1]/div[3]/div[1]/div[1]/div[2]/div[9]/button[1]/span[1]
    #Click Button "Add to Bag"
    Click Button     xpath:/html[1]/body[1]/div[1]/main[1]/section[1]/div[1]/div[1]/div[3]/div[1]/div[1]/button[1]
    #Click Button "Proceed to Checkout"
    Click Button     xpath:/html[1]/body[1]/div[1]/nav[1]/div[6]/div[1]/div[4]/div[1]/button[1]/span[1]
    #Click Dropdown Button
    Click Element     xpath:/html[1]/body[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[4]/div[1]/div[2]/span[1]/i[1]
    #Selext Checkbox "SiCepat - Regular"
    Select Checkbox   SiCepat - Regular
    #Click Dropdown Button
    Click Element     xpath:/html[1]/body[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[5]/div[1]/div[2]/span[1]/i[1]
    #Select Payment
    Click Element     xpath:/html[1]/body[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/label[1]/span[1]/div[1]
    #Click Button "Place Order"
    Click Button     xpath:/html[1]/body[1]/div[1]/section[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/button[1]
    #Button Verify Payment
    Click Button      xpath:/html[1]/body[1]/div[1]/section[1]/div[3]/div[1]/button[1]