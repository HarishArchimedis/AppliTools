*** Settings ***
Library    SeleniumLibrary
Library    EyesLibrary    runner=web_ufg    config=applitools.yaml
Resource    ../Resources/Login.robot
Variables    ../Main/driver.py
Library    ../Main/driver.py
Suite Setup    My Function

*** Test Cases ***
log
    Login into Application
    Eyes Open    test_name=TC01_AppliTools    app_name=AppliTools
    Is Eyes Open
    Eyes Check Window
    Close Browser
    Eyes Close Async
