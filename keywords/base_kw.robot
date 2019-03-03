*** Settings ***

Resource                    ../setup/base_su.robot
Library                     ../libs/utils/setup.py

*** Variables ***

${OS_TYPE}

*** Keywords ***

SetUp Os Type
    ${OS_TYPE}=         Get Os Type

SetUp Chrome Browser
    Log To Console      ${PATH_DRIVERS}/${OS_TYPE}/${CHROMEDRIVER}
    Create Webdriver    ${CHROMEBROWSER}        executable_path=${PATH_DRIVERS}/linux/${CHROMEDRIVER}

SetUp Firefox Browser
    Create Webdriver    ${FIREFOXBROWSER}       executable_path=${PATH_DRIVERS}/${OS_TYPE}/${GEKKODRIVER}

SetUp Browser
    Run Keyword If      '${BROWSER}' == '${CHROMEBROWSER}'          SetUp Chrome Browser
    ...                 ELSE                                        SetUp Firefox Browser

Open Home Page
    SetUp Os Type
    SetUp Browser
    Go To               ${URL_HTTP_UI}${URL_BASE_UI}

Close Browser
