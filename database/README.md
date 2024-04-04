# Baza Danych 

Serwer bazy danych to PostgreSQL v.16, która została umieszczona w kontenerze Dockera w środowisku Alpine Linux. 

Aby stworzyć bazę danych na maszynie należy uruchomić skrypt inicjujący: 
```
sudo ./init.sh USERNAME PASSWORD
```
Po krótkiej chwili zostanie uruchomiony kontener, ewentualnie pobrany obraz Dockera w przypadku jego braku w systemie operacyjnym. Następnie psql spróbuje nawiązać połączenie z bazą danych, pytając o wcześniej wprowadzone hasło, aby załadować plik inicjujący bazę danych. (UWAGA: W obecnej wersji skryptu opóźnienie na zaincjiowanie bazy danych może nie wystarczyć i system operacyjny odrzuci próbę połączenia. W tym przypadku należy ponownie uruchomić skrypt. Problem ten powinien zostać rozwiązany w przyszłości.)

Wymagania systemowe:
- Docker Engine 
- pqsl

## UWAGI: 
W obecnej wersji nie występuje poprawna inicjalizacja volume służącego do stałego przechowywania danych z bazy. Rozwiązanie tego problemu powinno być priorytetem przed rozpoczęciem korzystania z bazy i zapełniania jej danymi.  
