*** Settings ***
Library    CryptoLibrary    variable_decryption=True
Library    SeleniumLibrary
Variables    ../Data/Data.py
Variables    ../Data/Password.py
Variables    ../Data/Xpath.py

*** Keywords ***
Login into Application
    ${options}=    Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method    ${options}    add_argument    incognito
    Create WebDriver    Chrome    chrome_options=${options}
    Go To    ${url}
    Maximize Browser Window
    Sleep    3
    Input Text    //input[@id="user-name"]    standard_user
    Input Text    //input[@id="password"]    ${password34}
    Sleep    2
    Click Element    //input[@id="login-button"]