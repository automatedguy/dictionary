
*** Settings ***
Documentation       Facebook Example Suite

Resource            ../keywords/base_kw.robot

Suite Setup         SetUp Browser
Suite Teardown      Close Browser

*** Test Cases ***
Sign Up
    Given User Open Home Page
    And Enter Text "Harry" In "First name" Text Box
    And Enter Text "Wooderson" In "Last name" Text Box
    And Enter Text "4787482832" In "Mobile number or email" Text Box
    And Enter Text "748937489" In "New password" Text Box
    And Select Option "Dec" From "Month" Drop Down List
    And Select Option "20" From "Day" Drop Down List
    And Select Option "1981" From "Year" Drop Down List
    And Click On "Male" Radio Button
    And Click On "Sign Up" Button
    Sleep   3

Login
    Given User Open Home Page
    And Enter Text "01133587357" In "email" Text Box
    And Enter Text "brian81lopez" In "pass" Text Box
    And Click On "Log In" Button
    Sleep   3

Post Comment
    Log To Console              Work In Progress
