# Scenariusz tesktowy : Rejestracja użytkownika.


**Cel testowania:**
Weryfikacja poprawności danych w bazie danych.



## Przypadki Testowe:

### 1. Sprawdzenie nazwy strony w bazie

**Opis:** Sprawdzenie czy w bazie danych jest odpowiednio zapisana nazwa strony.
- **Kroki:**
  1. Nawiąż połączenie z bazą danych.
  2. Wykonaj  odpowiednie zapytanie SQL.
  3. Pobierz jeden wynik zapytania.
  4. Sprawdź, czy w bazie znajduje się odpowiednia  wartość nazwy strony.
- **Oczekiwany wynik:** W bazie danych istnieje prawidłowa nazwa strony.


### 2. Rejestracja poprawnym adresem mailowym

**Opis:** Sprawdzenie, czy po rejestracji w bazie danych zapisuje się odpowiedni adres mail użytkownika.
- **Kroki:**
  1. Otwórz stronę główną.
  2. Wejdź na stronę logowania.
  3. Kliknij w pole moje konto
  4. Wpisz prawidłowy mail ("{random_user_name}@mail.pl)
  5. Kliknij w pole zarejestruj się.
  6. Nawiąż połączenie z bazą danych.
  7. Wykonaj  odpowiednie zapytanie SQL.
  8. Pobierz jeden wynik zapytania.
  9. Sprawdź, czy w bazie danych zapisał się podany adres mail.
- **Oczekiwany wynik:** W bazie danych zapisał się poprawnie podany adres mailowy.

