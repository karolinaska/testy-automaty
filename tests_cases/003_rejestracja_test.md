# Scenariusz tesktowy : Rejestracja użytkownika.

**Cel testowania:**
Sprawdzenie możliwości utworzenia konta użytkownika.



## Przypadki Testowe:

### 1. Rejestracja niepooprawnym adresem mailowym 

**Opis:** Sprawdzenie, czy możliwe jest zareejstrowanie użytkownika błędnym adresem maailowym.
- **Kroki:**
  1. Otwórz stronę główną.
  2. Wejdź na stronę logowania.
  3. Kliknij w pole moje konto
  4. Wpisz nieprawidłowy mail ("mail@mail)
  5. Kliknij w pole zarejestruj się.
- **Oczekiwany wynik:** Użytkownik nie zarejestruje się poprawnie.

### 2. Rejestracja istniejącym już w bazie adresem mailowym.

**Opis:** Sprawdzenie, czy możliwe jest zarejstrowanie użytkownika, który istnieje już w bazie zarejestrowanych użytkowników.
- **Kroki:**
  1. Otwórz stronę główną.
  2. Wejdź na stronę logowania.
  3. Kliknij w pole moje konto
  4. Wpisz istniejący już mail ("karolina@localhost.com")
  5. Kliknij w pole zarejestruj się.
- **Oczekiwany wynik:** Użytkownik nie zarejestruje się poprawnie.

### 3. Rejestracja prawidłowym, nowym adresem mailowym 

**Opis:** Sprawdzenie, czy możliwe jest zarejstrowanie nowego użytkownika.
- **Kroki:**
  1. Otwórz stronę główną.
  2. Wejdź na stronę logowania.
  3. Kliknij w pole moje konto
  4. Wpisz prawidłowy mail ("{random_user_name}@mail.pl)
  5. Kliknij w pole zarejestruj się.
- **Oczekiwany wynik:** Użytkownik zarejestruje się poprawnie.



