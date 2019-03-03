
*** Settings ***
Documentation       First Example Suite

Resource            ../keywords/base_kw.robot

Suite Setup         Open Home Page
Suite Teardown      Close Browser

*** Test Cases ***
First Test Example
    Enter Text "Harry" In "firstname" Text Box
    Enter Text "Wooderson" In "lastname" Text Box
    Enter Text "4787482832" In "Mobile number or email" Text Box
    Enter Text "748937489" In "password" Text Box
