# Baza Danych 

Serwer bazy danych to PostgreSQL v.16, która została umieszczona w kontenerze Dockera w środowisku Alpine Linux. 

W środowisku hostowanego serwera dostępne jest ograniczona liczba portów dla serwera, więc na potrzeby zewnętrznego dostępu do bazy danych, wybrano port `20960` dla serwera PostgreSQL. Może to zostać zmienione w przyszłości, gdy zarządzaniem bazą danych będzie zajmować się API. 

Wymagania systemowe:
- Docker Engine 
- pqsl

## Inicjalizacja

Aby stworzyć bazę danych na maszynie należy uruchomić skrypt inicjujący: 
```
sudo ./init.sh USERNAME PASSWORD
```
Po krótkiej chwili zostanie uruchomiony kontener, ewentualnie pobrany obraz Dockera w przypadku jego braku w systemie operacyjnym. Następnie psql spróbuje nawiązać połączenie z bazą danych, pytając o wcześniej wprowadzone hasło, aby załadować plik inicjujący bazę danych. (UWAGA: W obecnej wersji skryptu opóźnienie na zaincjiowanie bazy danych może nie wystarczyć i system operacyjny odrzuci próbę połączenia. W tym przypadku należy ponownie uruchomić skrypt. Problem ten powinien zostać rozwiązany w przyszłości.)

## Serialziacja zasobów 

Skrypt dump_json.sh pozwala na szybką zmianę wszystkich obiektów w bazie w pliki JSON, po jednym dla każdej encji. Pliki te następnie są pakowane w archiwum typu .zip, którego nazwa to "bestiarum-YYYY-MM-DD". Archiwum to następnie powinno zostać przeniesione przez użytkownika lub usunięte, szczególnie w przypadku wykonywania kilku serializacji w tym samym dniu. Uruchomienie skrypty odbywa się poprzez komendę:
```
./dump_json.sh USERNAME PASSWORD
```

## UWAGI: 
W obecnej wersji nie występuje poprawna inicjalizacja volume służącego do stałego przechowywania danych z bazy. Rozwiązanie tego problemu powinno być priorytetem przed rozpoczęciem korzystania z bazy i zapełniania jej danymi.  
