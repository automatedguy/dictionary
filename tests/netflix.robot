*** Settings ***
Documentation       Netflix Example Suite

Resource            ../keywords/base_kw.robot

Suite Setup         Netflix Suite Setup
Suite Teardown      Close Browser

*** Keywords ***
Netflix Suite Setup
    SetUp Browser

*** Test Cases ***
Login
    Set Test Message                Login to Nexflix
    When User Open Home Page
    And Click On "Sign In" Button
    And Enter Text "gabriel_cespedes@hotmail.com" In "Email or phone number" Text Box
    And Enter Text "gabigrass" In "Password" Text Box
    And Click On "Sign In" Button
    And Click On "Gabriel Alejandro" Link
    Then pass execution  True

Search Movie
    Set Test Message                Search movie in Netflix
    When Click On "icon-search" Icon
    And Enter Text "friends" In "search-box-input" Text Box
    And Click On "Friends" Movie

Logout
    Set Test Message                Logout from Netflix
