import requests
from configs.settings import Settings

class TestApi():

    def test_sprawdzenie_endpointa_produktow(self):
        url = f"{Settings.SITE_URL}{Settings.API_PRODUCT_URL}"
        response = requests.get(url)

        assert response.status_code == 200
        
        for product in response.json():
            assert "id" in product
            assert "title" in product
            assert "content" in product

    def test_sprawdzenie_istniejacego_produktu(self):
        url = f"{Settings.SITE_URL}{Settings.API_PRODUCT_URL}/17"
        response = requests.get(url)

        assert response.status_code == 200

        title = response.json()["title"]["rendered"]
        assert title == 'Black and White Summer Portrait'

    def test_sprawdzenie_nieistniejacego_produktu(self):
        url = f"{Settings.SITE_URL}{Settings.API_PRODUCT_URL}/9999"
        response = requests.get(url)

        assert response.status_code == 404

        msg = response.json()["message"]
        assert msg == 'Nieprawidłowy identyfikator wpisu.'