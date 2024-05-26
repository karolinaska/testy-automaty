# Scenariusz tesktowy : Operacje na koszyku

**Cel testowania:**
Sprawdzenie funkcjonalności akcji związanych z koszykiem pod kątem poprawności działania. 



## Przypadki Testowe:

### 1. Dodanie produktu do koszyka

**Opis:** Sprawdzenie, czy możliwe jest dodanie produktu do koszyka.
- **Kroki:**
  1. Otwórz stronę główną.
  2. Wejdź na stronę produktu ("black-nd-white-summer-portrait").
  3. Dodaj produkt do koszyka.
- **Oczekiwany wynik:** Produkt został dodany do koszyka.


### 2. Usunięcie produktu z koszyka

**Opis:** Sprawdzenie, czy możliwe jest usunięcie produktu z koszyka.
- **Kroki:**
  1. Otwórz stronę główną.
  2. Wejdź na stronę produktu("black-nd-white-summer-portrait").
  3. Dodaj produkt do koszyka.
  4. Wejdź do koszyka
  5. Usuń produkt z koszyka.
- **Oczekiwany wynik:** Produkt został usunięty z koszyka.

### 3. Sumowanie ceny kilku produktów
**Opis:** Sprawdzenie czy po dodaniu więcej niż jednej rzeczy do koszyka, ceny poszczególnych produktów sumują sie pooprawnie.
- **Kroki:**
  1. Otwórz stronę główną.
  2. Wejdź na stronę produktu("black-nd-white-summer-portrait").
  3. Dodaj produkt do koszyka.
  4. Wejdź na stronę produktu ("vintage-typewriter").
  5. Dodaj produkt do koszyka.
- **Oczekiwany wynik:** Suma produktów powinna  być równa sumie cen poszczególnych produktów.
