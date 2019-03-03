from robot.libraries.BuiltIn import BuiltIn
from selenium.common.exceptions import NoSuchElementException
from Locator import Locators

ROBOT_LIBRARY_SCOPE = 'TEST SUITE'


class Browser:

    _driver = None

    _CLICKABLES_ = 'clickables'
    _WRITABLES_ = 'writables'
    _SELECTABLES_ = 'selectables'
    _OPTIONABLES_ = 'optionables'

    @staticmethod
    def _get_driver():
        selenium_lib = BuiltIn().get_library_instance('SeleniumLibrary')
        return selenium_lib.driver

    def find_element(self, locators):
        for locator in locators:
            try:
                element = self._get_driver().find_element_by_xpath(locator)
                print('Found: ' + locator)
                return element
            except NoSuchElementException:
                pass

    def click_element(self, element_id):
        locators = Locators(self._CLICKABLES_, element_id)
        self.find_element(locators).click()

    def send_text(self, input_text, element_id):
        locators = Locators(self._WRITABLES_, element_id)
        self.find_element(locators).send_keys(input_text)

    def select_option(self, option, selectable):
        select_locators = Locators(self._SELECTABLES_, selectable)
        self.find_element(select_locators).click()
        option_locators = Locators(self._OPTIONABLES_, option)
        self.find_element(option_locators).click()
