from pages.base_page import BasePage
from locators.product_page import ProductPageLocators
from configs.settings import Settings
import utils.utils as utils

class ProductPage(BasePage):

    def __init__(self, driver):
        self.locator = ProductPageLocators
        super().__init__(driver)

    def otworz_strone_produktu(self, url):
        self.open(f"{Settings.SITE_URL}/produkt/{url}")

    def dodaj_produkt_do_koszyka(self):
        self.find_element(*self.locator.add_to_cart_button).click()

    def pobierz_cene_produktu(self):
        price = self.find_element(*self.locator.price_text).text
        return utils.cena_na_liczbe(price)