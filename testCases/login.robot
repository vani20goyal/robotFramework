*** Settings ***
Library  Selenium2Library

*** Variables ***
${browser}  chrome
${url}   http://automationpractice.com/index.php
${username}  tester123@test.com
${password}  test123

*** Test Cases ***
LoginTest
    open browser  ${url}  ${browser}
    Maximize browser window
    login
    click element  xpath://a[@class='logout']
    Close Browser

*** Keywords ***
login
    click link  xpath://a[@class='login']
    input text  id:email  ${username}
    input text  id:passwd  ${password}
    click element  id:SubmitLogin