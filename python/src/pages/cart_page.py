from pages.base_page import BasePage
from locators.cart_page import CartPageLocators
from configs.settings import Settings
import utils.utils as utils

class CartPage(BasePage):

    def __init__(self, driver):
        self.locator = CartPageLocators
        super().__init__(driver)

    def otworz_strone_koszyka(self):
        self.open(f"{Settings.SITE_URL}/koszyk/")

    def usun_produkt(self):
        self.find_element(*self.locator.remove_product_link).click()

    def pobierz_sume_produktow(self):
        price = self.find_element(*self.locator.cart_items_total).text
        return utils.cena_na_liczbe(price)