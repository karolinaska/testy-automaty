from pages.base_page import BasePage
from locators.login_page import LoginPageLocators

class LoginPage(BasePage):

    def __init__(self, driver):
        self.locator = LoginPageLocators
        super().__init__(driver)

    def pobierz_komunikat_bledu(self):
        return  self.find_element(*self.locator.error_banner).text

    def wpisz_login(self, login_text):
        self.find_element(*self.locator.login_input).send_keys(login_text)

    def wpisz_haslo(self, pass_text):
        self.find_element(*self.locator.password_input).send_keys(pass_text)

    def wpisz_email(self, email_text):
        self.find_element(*self.locator.email_input).send_keys(email_text)

    def kliknij_zaloguj_sie(self):
        self.find_element(*self.locator.login_button).click()

    def kliknij_zarejestruj_sie(self):
        self.find_element(*self.locator.register_button).click()