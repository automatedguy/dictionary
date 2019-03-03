*** Settings ***

Resource                    ../setup/base_su.robot

*** Variables ***

${OS_TYPE}

*** Keywords ***

SetUp Os Type
    #TODO: Add operative system detection

SetUp Chrome Browser
    Create Webdriver    Chrome    executable_path=${PATH_DRIVERS}/linux/chromedriver

SetUp Firefox Browser

SetUp Browser
    #TODO>

Open Home Page
    SetUp Chrome Browser
    Go To               ${URL_HTTP_UI}${URL_BASE_UI}

Close Browser
