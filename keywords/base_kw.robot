*** Settings ***

Resource                    ../setup/base_su.robot
Library                     ../libs/utils/setup.py
Library                     ../libs/ui/Browser.py

*** Variables ***

${OS_TYPE}

*** Keywords ***

SetUp Os Type
    ${OS_TYPE}=         Get Os Type
    Set Suite Variable  ${OS_TYPE}

SetUp Chrome Browser
    Create Webdriver    ${CHROMEBROWSER}        executable_path=${PATH_DRIVERS}/${OS_TYPE}/${CHROMEDRIVER}

SetUp Firefox Browser
    Create Webdriver    ${FIREFOXBROWSER}       executable_path=${PATH_DRIVERS}/${OS_TYPE}/${GECKODRIVER}

SetUp Browser
    SetUp Os Type
    Run Keyword If      '${BROWSER}' == '${CHROMEBROWSER}'          SetUp Chrome Browser
    ...                 ELSE                                        SetUp Firefox Browser
    Maximize Browser Window

Open Home Page
    Go To               ${URL_HTTP_UI}${URL_BASE_UI}

Enter Text "${text}" In "${element}" Text Box
    Send Text           ${text}         ${element}

Select Option "${option}" From "${select}" Drop Down List
    Select Option       ${option}   ${select}

Click On "${option}" Radio Button
    Click On Element    ${option}

Click On "${button}" Button
    Click On Element    ${button}