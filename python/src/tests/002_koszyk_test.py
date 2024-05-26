import pytest
import time
from pages.product_page import ProductPage
from pages.cart_page import CartPage


class TestKoszyk():

    @pytest.mark.usefixtures("browser")
    def test_dodanie_produktu_do_koszyka(self, browser):
        product_page = ProductPage(browser)
        cart_page = CartPage(browser)

        product_page.otworz_strone_produktu('black-and-white-summer-portrait/')
        product_page.dodaj_produkt_do_koszyka()

        assert f"został dodany do koszyka" in product_page.page_text()

        cart_page.otworz_strone_koszyka()

        assert f"Black and White Summer Portrait" in product_page.page_text()

    @pytest.mark.usefixtures("browser")
    def test_usuniecie_produktu_z_koszyka(self, browser):
        product_page = ProductPage(browser)
        cart_page = CartPage(browser)

        product_page.otworz_strone_produktu('black-and-white-summer-portrait/')
        product_page.dodaj_produkt_do_koszyka()
        cart_page.otworz_strone_koszyka()
        cart_page.usun_produkt()

        time.sleep(1)

        assert f"Twój koszyk jest obecnie pusty!" in product_page.page_text()

    @pytest.mark.usefixtures("browser")
    def test_sumowanie_ceny_kilku_produktow(self, browser):
        product_page = ProductPage(browser)
        cart_page = CartPage(browser)

        product_page.otworz_strone_produktu('black-and-white-summer-portrait/')
        product_page.dodaj_produkt_do_koszyka()
        cena_produkt_1 = product_page.pobierz_cene_produktu()

        product_page.otworz_strone_produktu('vintage-typewriter/')
        product_page.dodaj_produkt_do_koszyka()
        cena_produkt_2 = product_page.pobierz_cene_produktu()

        product_page.otworz_strone_produktu('hat/')
        product_page.dodaj_produkt_do_koszyka()
        cena_produkt_3 = product_page.pobierz_cene_produktu()

        cart_page.otworz_strone_koszyka()

        time.sleep(1)

        suma_koszyk = cart_page.pobierz_sume_produktow()
        suma_produktow = cena_produkt_1 + cena_produkt_2 + cena_produkt_3

        assert suma_koszyk==suma_produktow
