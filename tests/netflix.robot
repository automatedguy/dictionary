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
    Enter Text "xxxxxxxxx" In "Email or phone number" Text Box
    Enter Text "xxxxxxxxx" In "Password" Text Box
    Click On "Sign In" Button
    Click On "Gabriel Alejandro" Link

Search Movie
    Set Test Message                Search movie in Netflix
    Click On "icon-search" Icon
    Enter Text "friends" In "search-box-input" Text Box
    Click On "Friends" Movie

Play Movie
    Set Test Message                Play movie in Netflix
    Click On "Próximo episodio" Button
    Sleep           30

Stop Movie
    Set Test Message                Stop movie in Netflix
    Go Back
    Sleep           10

Logout
    Set Test Message                Logout from Netflix