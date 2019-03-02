from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.chrome.webdriver import WebDriver
from locator import Locators


class Browser:

    _driver = None

    _CLICKABLES_ = 'clickables'
    _WRITABLES_ = 'writables'
    _SELECTABLES_ = 'selectables'
    _OPTIONABLES_ = 'optionables'

    def __init__(self, *args):
        self._driver = WebDriver()
        self._base_url = args[0]

    def navigate_to(self, url):
        self._driver.get(url)

    def open(self):
        self.navigate_to(self._base_url)

    def maximize(self):
        self._driver.maximize_window()

    def close(self):
        self._driver.close()

    def find_element(self, locators):
        element = None
        for locator in locators:
                try:
                    element = self._driver.find_element_by_xpath(locator)
                    return element
                except NoSuchElementException:
                    pass
        return element

    def click_element(self, element_id):
        locators = Locators(self._CLICKABLES_, element_id)
        self.find_element(locators).click()

    def input_text(self, input_text, element_id):
        locators = Locators(self._WRITABLES_, element_id)
        self.find_element(locators).send_keys(input_text)

    def select_option(self, option, selectable):
        select_locators = Locators(self._SELECTABLES_, selectable)
        self.find_element(select_locators).click()
        option_locators = Locators(self._OPTIONABLES_, option)
        self.find_element(option_locators).click()
