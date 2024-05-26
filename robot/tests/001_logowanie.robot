*** Settings ***
Resource            ../pages/login_page.robot

Test Setup          Otwórz Stronę Główną
Test Teardown       Zamknij Przeglądarkę


*** Variables ***
${UserName}             Karolina
${UserPassword}         1234567890

${WrongUserName}        login123
${WrongUserPassword}    pass123


*** Test Cases ***
Poprawne Logowanie
    Kliknij Link Moje Konto
    Wpisz Login    ${UserName}
    Wpisz Hasło    ${UserPassword}
    Kliknij Zaloguj Się
    Page Should Contain    Witaj ${UserName} (nie jesteś ${UserName}? Wyloguj się)

Niepoprawne Logowanie (Zły Login)
    Kliknij Link Moje Konto
    Wpisz Login    ${WrongUserName}
    Wpisz Hasło    ${WrongUserPassword}
    Kliknij Zaloguj Się
    Komunikat Błędu Powinien Zawierać    brak ${WrongUserName} wśród zarejestrowanych w witrynie użytkowników

Niepoprawnege Logowanie (Złe Hasło)
    Kliknij Link Moje Konto
    Wpisz Login    ${UserName}
    Wpisz Hasło    ${WrongUserPassword}
    Kliknij Zaloguj Się
    Komunikat Błędu Powinien Zawierać    wpisano niepoprawne hasło dla użytkownika ${UserName}

Logowanie Bez Podania Danych
    Kliknij Link Moje Konto
    Kliknij Zaloguj Się
    Komunikat Błędu Powinien Zawierać    Nazwa użytkownika jest wymagana.
