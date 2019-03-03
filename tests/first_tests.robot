
*** Settings ***
Documentation       Suite description

Resource            ../keywords/base_kw.robot

Suite Setup         Open Home Page
Suite Teardown      Close Browser

*** Test Cases ***
Test title

    Sleep   7

