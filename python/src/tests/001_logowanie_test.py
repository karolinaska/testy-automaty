import pytest
from pages.login_page import LoginPage


class TestLogowanie():

    UserName = 'Karolina'
    UserPassword = '1234567890'

    WrongUserName = 'login123'
    WrongUserPassword = 'pass123'

    @pytest.mark.usefixtures("browser")
    def test_poprawne_logowanie(self, browser):
        login_page = LoginPage(browser)

        login_page.kliknij_link_moje_konto()
        login_page.wpisz_login(self.UserName)
        login_page.wpisz_haslo(self.UserPassword)
        login_page.kliknij_zaloguj_sie()

        assert f"Witaj {self.UserName} (nie jesteś {self.UserName}? Wyloguj się)" in login_page.page_text()

    @pytest.mark.usefixtures("browser")
    def test_niepoprawne_logowanie_zly_login(self, browser):
        login_page = LoginPage(browser)

        login_page.kliknij_link_moje_konto()
        login_page.wpisz_login(self.WrongUserName)
        login_page.wpisz_haslo(self.WrongUserPassword)
        login_page.kliknij_zaloguj_sie()

        komunikat = login_page.pobierz_komunikat_bledu()
        assert f"brak {self.WrongUserName} wśród zarejestrowanych w witrynie użytkowników" in komunikat

    @pytest.mark.usefixtures("browser")
    def test_niepoprawne_logowanie_zle_haslo(self, browser):
        login_page = LoginPage(browser)

        login_page.kliknij_link_moje_konto()
        login_page.wpisz_login(self.UserName)
        login_page.wpisz_haslo(self.WrongUserPassword)
        login_page.kliknij_zaloguj_sie()

        komunikat = login_page.pobierz_komunikat_bledu()
        assert f"wpisano niepoprawne hasło dla użytkownika {self.UserName}" in komunikat

    @pytest.mark.usefixtures("browser")
    def test_logowanie_bez_podania_danych(self, browser):
        login_page = LoginPage(browser)

        login_page.kliknij_link_moje_konto()
        login_page.kliknij_zaloguj_sie()

        komunikat = login_page.pobierz_komunikat_bledu()
        assert f"Nazwa użytkownika jest wymagana." in komunikat