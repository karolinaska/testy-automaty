# Scenariusz Testowy: Strona Logowania

**Cel testowania:**
Sprawdzenie funkcjonalności strony logowania pod kątem poprawności działania, walidacji danych, oraz bezpieczeństwa.


## Przypadki Testowe:

### 1. Test poprawnego logowania

**Opis:** Sprawdzenie, czy użytkownik z poprawnymi danymi może się zalogować.
- **Kroki:**
  1. Otwórz stronę logowania.
  2. Wprowadź poprawny login ("Karolina").
  3. Wprowadź poprawne hasło ("1234567890").
  4. Kliknij przycisk "Zaloguj się".
- **Oczekiwany wynik:** Użytkownik zostaje zalogowany.

### 2. Test niepoprawnego logowania (zły login)

**Opis:** Sprawdzenie, czy użytkownik z niepoprawnym loginem nie może się zalogować.
- **Kroki:**
  1. Otwórz stronę logowania.
  2. Wprowadź niepoprawny login ("login123").
  3. Wprowadź poprawne hasło ("1234567890").
  4. Kliknij przycisk "Zaloguj się".
- **Oczekiwany wynik:** Użytkownik nie zostaje zalogowany.

### 3. Test niepoprawnego logowania (złe hasło)

**Opis:** Sprawdzenie, czy użytkownik z niepoprawnym hasłem nie może się zalogować.
- **Kroki:**
  1. Otwórz stronę logowania.
  2. Wprowadź poprawny login ("Karolina").
  3. Wprowadź niepoprawne hasło ("pass123").
  4. Kliknij przycisk "Zaloguj się".
- **Oczekiwany wynik:** Użytkownik nie zostaje zalogowany.

### 4. Test logowania bez podania danych

**Opis:** Sprawdzenie, czy użytkownik bez wprowadzenia loginu i hasła nie może się zalogować.
- **Kroki:**
  1. Otwórz stronę logowania.
  2. Zostaw pole loginu puste (" ").
  3. Zostaw pole hasła puste (" ").
  4. Kliknij przycisk "Zaloguj się".
- **Oczekiwany wynik:** Użytkownik nie zostaje zalogowany.

