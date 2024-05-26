import pytest
import utils.utils as utils
from pages.login_page import LoginPage


class TestRejestracja():

    IncorrectMailAddress = 'mail@mail'
    UsedMailAddress = 'karolina@localhost.com'

    @pytest.mark.usefixtures("browser")
    def test_rejestracja_niepoprawny_adres_mailowy(self, browser):
        login_page = LoginPage(browser)

        login_page.kliknij_link_moje_konto()
        login_page.wpisz_email(self.IncorrectMailAddress)
        login_page.kliknij_zarejestruj_sie()

        komunikat = login_page.pobierz_komunikat_bledu()
        assert f"Proszę podać poprawny adres e-mail." in komunikat

    @pytest.mark.usefixtures("browser")
    def test_rejestracja_istniejacy_adres_mailowy(self, browser):
        login_page = LoginPage(browser)

        login_page.kliknij_link_moje_konto()
        login_page.wpisz_email(self.UsedMailAddress)
        login_page.kliknij_zarejestruj_sie()

        komunikat = login_page.pobierz_komunikat_bledu()
        assert f"Konto z Twoim adresem e-mail jest już zarejestrowane." in komunikat

    @pytest.mark.usefixtures("browser")
    def test_rejestracja_poprawny_adres_mailowy(self, browser):
        login_page = LoginPage(browser)

        random_user_name = utils.generate_random_string(10)
        mail = f"{random_user_name}@mail.pl"

        login_page.kliknij_link_moje_konto()
        login_page.wpisz_email(mail)
        login_page.kliknij_zarejestruj_sie()

        assert f"Witaj {random_user_name} (nie jesteś {random_user_name}? Wyloguj się)" in login_page.page_text()