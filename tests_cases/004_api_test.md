# Scenariusz tesktowy : Rejestracja użytkownika.

**Cel testowania:**
Sprawdzenie poprawności wystawianych pól przez api.



## Przypadki Testowe:

### 1. Sprawdzenie endpointa produktów

**Opis:** Sprawdzenie, czy endpoint API zwraca poprawny status odpowiedzi oraz czy każdy produkt zawiera w niej wymagane klucze.
- **Kroki:**
  1. Przygotuj odpowiedni adres URL do API produktów
  2. Wykonaj żądanie HTTP GET na przygotowany adres URL.
  3. Sprawdż, czy status odpowiedzi HTTP wynosi 200.
  4. Sprawdź, czy odpowiedź jesli listą.
  5. Dla każdego z produktów w odpowiedzi sprawdź czy zawiera klucz: id, tittle oraz content
- **Oczekiwany wynik:** Endpoint zwraca poprawne dane.


### 2. Sprawdzenie istniejącego produktu

**Opis:** Sprawdzenie, czy Api zwraca odpowiednie dane dla istniejącego produktu.
- **Kroki:**
  1. Przygotuj odpowiedni adres URL do API produktu.
  2. Wykonaj żądanie HTTP GET na przygotowany adres URL.
  3. Sprawdż, czy status odpowiedzi HTTP wynosi 200.
  4. Sprawdż, czy testowany artykuł ma poprawną nazwę.
- **Oczekiwany wynik:** Api zwraca odpowiednie dane na zapytany artykuł.


### 3. Sprawdzenie nieistniejącego prdokutu

**Opis:** Sprawdzenie, czy Api zwraca odpowiedni komunikat błedu na nieistniejący produkt.
- **Kroki:**
  1. Przygotuj odpowiedni adres URL do API produktu.
  2. Wykonaj żądanie HTTP GET na przygotowany adres URL.
  3. Sprawdż, czy status odpowiedzi HTTP wynosi 404.
  4. Sprawdż, komunikat błędu brzmi: "Nieprawidłowy identyfikator wpisu.
- **Oczekiwany wynik:** Api zwraca odpowiedni błąd na nieistniejący artykuł.
