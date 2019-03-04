*** Settings ***
Library                 SeleniumLibrary


*** Variables ***

# Browser and drivers SetUp
${CHROMEBROWSER}        Chrome
${CHROMEDRIVER}         chromedriver

${FIREFOXBROWSER}       Firefox
${GECKODRIVER}          geckodriver

${PATH_DRIVERS}         libs/ui/drivers

# Browser SetUp
${BROWSER}              ${CHROMEBROWSER}

# UI SetUp
${URL_HTTP_UI}          https://
${URL_BASE_UI}          facebook.com
${URL_HOME_UI}
${URL_PORT_UI}

# API SetUp
${URL_HTTP_API}         https://
${URL_BASE_API}
${URL_HOME_API}
${URL_PORT_API}

