*** Settings ***
Resource    ../locators/common.robot
Resource    ../locators/product_page.robot
Resource    common.robot


*** Keywords ***
Otwórz Stronę Produktu
    [Arguments]    ${url}
    Go To    ${SITE_URL}/produkt/${url}

Dodaj Produkt Do Koszyka
    Click Element    ${add_to_cart_button}

Pobierz Cenę Produktu
    ${price}=    Get Text    ${price_text}
    ${clear_price}=    Cena Na Liczbę    ${price}
    RETURN    ${clear_price}
