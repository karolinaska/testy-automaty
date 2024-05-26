*** Settings ***
Resource            ../pages/login_page.robot

Test Setup          Otwórz Stronę Główną
Test Teardown       Zamknij Przeglądarkę


*** Variables ***
${IncorrectMailAddress}     mail@mail
${UsedMailAddress}          karolina@localhost.com


*** Test Cases ***
Rejestracja Niepoprawny Adres Mailowy
    Kliknij Link Moje Konto
    Wpisz Email    ${IncorrectMailAddress}
    Kliknij Zrejestruj Się
    Komunikat Błędu Powinien Zawierać    Proszę podać poprawny adres e-mail.

Rejestracja Istniejący Adres Mailowy
    Kliknij Link Moje Konto
    Wpisz Email    ${UsedMailAddress}
    Kliknij Zrejestruj Się
    Komunikat Błędu Powinien Zawierać    Konto z Twoim adresem e-mail jest już zarejestrowane.

Rejestracja Poprawny Adres Mailowy
    Kliknij Link Moje Konto
    ${random_user_name}=    Generate Random String    length=10    chars=[LOWER][NUMBERS]
    ${mail}=    Set Variable    ${random_user_name}@mail.pl
    Wpisz Email    ${mail}
    Kliknij Zrejestruj Się
    Page Should Contain    Witaj ${random_user_name} (nie jesteś ${random_user_name}? Wyloguj się)
