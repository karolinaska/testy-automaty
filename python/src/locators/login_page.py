from selenium.webdriver.common.by import By

class LoginPageLocators(object):
    error_banner = (By.CSS_SELECTOR, 'main .woocommerce .is-error')
    login_input = (By.ID, 'username')
    password_input = (By.ID, 'password')
    email_input = (By.ID, 'reg_email')
    login_button = (By.NAME, 'login')
    register_button = (By.NAME, 'register')
