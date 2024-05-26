*** Settings ***
Resource            ../pages/product_page.robot
Resource            ../pages/cart_page.robot

Test Setup          Otwórz Stronę Główną
Test Teardown       Zamknij Przeglądarkę


*** Test Cases ***
Dodanie Produktu Do Koszyka
    Otwórz Stronę Produktu    black-and-white-summer-portrait/
    Dodaj Produkt Do Koszyka
    Page Should Contain    został dodany do koszyka
    Otwórz Stronę Koszyka
    Page Should Contain    Black and White Summer Portrait

Usunięcie Produku Z Koszyka
    Otwórz Stronę Produktu    black-and-white-summer-portrait/
    Dodaj Produkt Do Koszyka
    Otwórz Stronę Koszyka
    Usuń Produkt
    Sleep    1
    Page Should Contain    Twój koszyk jest obecnie pusty!

Sumowanie Ceny Kilku Produktów
    Otwórz Stronę Produktu    black-and-white-summer-portrait/
    Dodaj Produkt Do Koszyka
    ${cena_produkt_1}=    Pobierz Cenę Produktu
    Otwórz Stronę Produktu    vintage-typewriter/
    Dodaj Produkt Do Koszyka
    ${cena_produkt_2}=    Pobierz Cenę Produktu
    Otwórz Stronę Produktu    hat/
    Dodaj Produkt Do Koszyka
    ${cena_produkt_3}=    Pobierz Cenę Produktu
    Otwórz Stronę Koszyka
    Sleep    1
    ${suma_koszyk}=    Pobierz Sumę Produktów
    ${suma_produktow}=    Evaluate    ${cena_produkt_1} + ${cena_produkt_2} + ${cena_produkt_3}
    Should Be Equal As Numbers    ${suma_koszyk}    ${suma_produktow}
