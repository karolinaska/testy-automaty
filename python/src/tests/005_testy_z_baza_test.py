import pytest
import utils.utils as utils
from configs.settings import Settings
from pages.login_page import LoginPage

class TestZBaza():

    @pytest.mark.usefixtures("database")
    def test_sprawdzenie_nazwy_strony_w_bazie(self, database):
        with database.cursor() as cursor:
            sql = "SELECT * FROM wp_options WHERE option_name = 'blogname' LIMIT 1;"
            cursor.execute(sql)
            result = cursor.fetchone()

            assert result['option_value'] == Settings.SITE_NAME

    @pytest.mark.usefixtures("browser")
    @pytest.mark.usefixtures("database")
    def test_rejestracja_poprawny_adres_mailowy(self, database, browser):
        login_page = LoginPage(browser)

        random_user_name = utils.generate_random_string(10)
        mail = f"{random_user_name}@mail.pl"

        login_page.kliknij_link_moje_konto()
        login_page.wpisz_email(mail)
        login_page.kliknij_zarejestruj_sie()

        with database.cursor() as cursor:
            sql = f"SELECT id FROM wp_users WHERE user_email = '{mail}';"
            cursor.execute(sql)
            result = cursor.fetchone()

            assert result is not None

