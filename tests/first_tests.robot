
*** Settings ***
Documentation       First Example Suite

Resource            ../keywords/base_kw.robot

Suite Setup         SetUp Browser
Suite Teardown      Close Browser

Test Setup          Open Home Page

*** Test Cases ***
Sign Up
    Enter Text "Harry" In "First name" Text Box
    Enter Text "Wooderson" In "Last name" Text Box
    Enter Text "4787482832" In "Mobile number or email" Text Box
    Enter Text "748937489" In "New password" Text Box
    Select Option "Dec" From "Month" Drop Down List
    Select Option "20" From "Day" Drop Down List
    Select Option "1981" From "Year" Drop Down List
    Click On "Male" Radio Button
    Click On "Sign Up" Button
    Sleep   3

Login
    Enter Text "gabriel_cespedes@hotmail.com" In "email" Text Box
    Enter Text "gabi1981ce#10" In "pass" Text Box
    Click On "Log In" Button
    Sleep   3

Post Comment
