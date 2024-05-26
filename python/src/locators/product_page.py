from selenium.webdriver.common.by import By

class ProductPageLocators(object):
    add_to_cart_button = (By.CSS_SELECTOR, '.wc-block-add-to-cart-form .single_add_to_cart_button')
    price_text = (By.CSS_SELECTOR, '.woocommerce-Price-amount')
