from time import sleep
from browser import Browser

browser = Browser('https://twitter.com')


browser.open()
browser.maximize()

browser.click_element('Sign Up')
sleep(4)
browser.input_text('Hegbertillo', 'Name')
browser.input_text('5434234234', 'Phone')

browser.navigate_to('https://facebook.com')
browser.input_text('Harry', 'firstname')
browser.input_text('Wooderson', 'lastname')
browser.input_text('4787482832', 'Mobile number or email')
browser.input_text('748937489', 'password')
browser.select_option('Dec', 'Month')
browser.select_option('20', 'Day')
browser.select_option('1981', 'Year')
browser.click_element('Male')

browser.navigate_to("https://netflix.com")
browser.click_element('Sign In')
browser.input_text('54234232323', 'Email or phone number')
browser.input_text('hdsjadall', 'Password')
browser.click_element('Sign In')

sleep(5)
browser.close()
