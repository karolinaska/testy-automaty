from selenium.webdriver.common.by import By

class CommonLocators(object):
    body_content = (By.CSS_SELECTOR, 'body')
    header_my_accout_link = (By.XPATH, '//header//a[text()=\'Moje konto\']')
