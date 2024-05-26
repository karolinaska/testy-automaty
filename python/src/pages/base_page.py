from locators.common import CommonLocators

class BasePage:

    def __init__(self, driver):
        self.common_locator = CommonLocators
        self.driver = driver

    def find_element(self, *locator):
        return self.driver.find_element(*locator)

    def open(self, url):
        self.driver.get(url)

    def page_text(self):
        return self.find_element(*CommonLocators.body_content).text

    def kliknij_link_moje_konto(self):
        self.find_element(*self.common_locator.header_my_accout_link).click()