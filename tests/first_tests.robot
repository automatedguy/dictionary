
*** Settings ***
Documentation       First Example Suite

Resource            ../keywords/base_kw.robot

Suite Setup         Open Home Page
Suite Teardown      Close Browser

*** Test Cases ***
First Test Example

    Sleep   7

