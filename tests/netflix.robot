*** Settings ***
Documentation       Netflix Example Suite

Resource            ../keywords/base_kw.robot

Suite Setup         Netflix Suite Setup
Suite Teardown      Close Browser

*** Keywords ***
Netflix Suite Setup
    SetUp Browser
    Open Home Page

*** Test Cases ***
Login
    Set Test Message                Login to Nexflix
    Click On "Sign In" Button
    Enter Text "gabriel_cespedes@hotmail.com" In "Email or phone number" Text Box
    Enter Text "gabigrass" In "Password" Text Box
    Click On "Sign In" Button
    Click On "Gabriel Alejandro" Link
    Sleep           3

Search Movie
    Set Test Message                Search movie in Netflix

Play Movie
    Set Test Message                Play movie in Netflix

Stop Movie
    Set Test Message                Stop movie in Netflix

Logout
    Set Test Message                Logout from Netflix
