import pytest
import pymysql
from selenium import webdriver
from src.configs.settings import Settings
from src.configs.database import Database

@pytest.fixture(scope="function")
def browser():
    driver = webdriver.Firefox()
    driver.maximize_window()
    driver.get(Settings.SITE_URL)
    
    yield driver

    driver.quit()

@pytest.fixture(scope="function")
def database():
    database = pymysql.connect(
        host = Database.DB_HOST,
        port = Database.DB_PORT,
        database = Database.DB_NAME,
        user = Database.DB_USER,
        password = Database.DB_PASSWORD,
        cursorclass = pymysql.cursors.DictCursor
    )
    
    yield database

    database.close()