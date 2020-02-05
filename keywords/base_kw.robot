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
    ${options}=         Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method         ${options}              add_argument        --disable-notifications
    Call Method         ${options}              add_argument        disable-extensions
    Create Webdriver    ${CHROMEBROWSER}        executable_path=${PATH_DRIVERS}/${OS_TYPE}/${CHROMEDRIVER}      chrome_options=${options}

SetUp Firefox Browser
    Create Webdriver    ${FIREFOXBROWSER}       executable_path=${PATH_DRIVERS}/${OS_TYPE}/${GECKODRIVER}

SetUp Browser
    SetUp Os Type
    Run Keyword If      '${BROWSER}' == '${CHROMEBROWSER}'          SetUp Chrome Browser
    ...                 ELSE                                        SetUp Firefox Browser
    Maximize Browser Window

User Open Home Page
    Go To               ${URL_HTTP_UI}${URL_BASE_UI}
    Wait For Document Ready

Enter Text "${text}" In "${element}" Text Box
    Send Text           ${text}         ${element}
    Wait For Document Ready


Select Option "${option}" From "${select}" Drop Down List
    Select Option       ${option}   ${select}
    Wait For Document Ready

Click On "${button}" Button
    Sleep    5
    Click On Element    ${button}
    Wait For Document Ready

Click On "${button}" Icon
    Click On Element    ${button}
    Wait For Document Ready

Click On "${movie}" Movie
    Sleep                   5
    Click On Element    ${movie}
    Wait For Document Ready
    sleep                   5

Click On "${option}" Radio Button
    Click On Element    ${option}
    Wait For Document Ready

Click On "${link}" Link
    sleep                   5
    Click On Element    ${link}
    Wait For Document Ready

Wait For Document Ready
    Wait For Condition  return document.readyState=="complete"