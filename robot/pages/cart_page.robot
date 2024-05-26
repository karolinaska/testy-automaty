*** Settings ***
Resource    ../locators/common.robot
Resource    ../locators/cart_page.robot
Resource    common.robot


*** Keywords ***
Otwórz Stronę Koszyka
    Go To    ${SITE_URL}/koszyk/

Usuń Produkt
    Click Element    ${remove_product_link}

Pobierz Sumę Produktów
    ${price}=    Get Text    ${cart_items_total}
    ${clear_price}=    Cena Na Liczbę    ${price}
    RETURN    ${clear_price}
