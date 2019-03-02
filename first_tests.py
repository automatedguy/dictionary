from time import sleep
from browser import Browser

browser = Browser('https://facebook.com')


browser.open()
browser.maximize()

browser.input_text('Harry', 'firstname')
browser.input_text('Wooderson', 'lastname')
browser.input_text('4787482832', 'Mobile number or email')
browser.input_text('748937489', 'password')
browser.select_option('Dec', 'Month')
browser.select_option('20', 'Day')
browser.select_option('1981', 'Year')
browser.click_element('Male')
browser.click_element('Sign Up')
sleep(5)
browser.close()
