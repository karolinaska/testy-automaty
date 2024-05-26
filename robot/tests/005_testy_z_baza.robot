*** Settings ***
Library             DatabaseLibrary
Library             Collections
Resource            ../configs/database.robot
Resource            ../pages/login_page.robot

Suite Setup         Connect To Database    ${DB_DRIVER}    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}
Suite Teardown      Disconnect From Database


*** Test Cases ***
Sprawdzenie Nazwy Strony W Bazie
    ${result}=    Query    SELECT * FROM wp_options WHERE option_name = 'blogname' LIMIT 1;    \    True
    Log    ${result[0]}[option_value]
    Should Be Equal As Strings    ${result[0]}[option_value]    ${SITE_NAME}

Rejestracja Uzytkownika I Sprawdzenie Czy Został Zapisany W Bazie
    Otwórz Stronę Główną
    Kliknij Link Moje Konto
    ${random_user_name}=    Generate Random String    length=10    chars=[LOWER][NUMBERS]
    ${mail}=    Set Variable    ${random_user_name}@mail.pl
    Wpisz Email    ${mail}
    Kliknij Zrejestruj Się
    Zamknij Przeglądarkę
    Check If Exists In Database    SELECT id FROM wp_users WHERE user_email = '${mail}';
