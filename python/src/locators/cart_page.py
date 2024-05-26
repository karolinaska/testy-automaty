from selenium.webdriver.common.by import By

class CartPageLocators(object):
    login_button = (By.NAME, 'login')
    remove_product_link = (By.CLASS_NAME, 'wc-block-cart-item__remove-link')
    cart_items_total = (By.CLASS_NAME, 'wc-block-components-totals-item__value')
