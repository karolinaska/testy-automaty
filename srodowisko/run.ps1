# kasujemy stare środowisko wraz z jego volumenami
docker compose -p srodowisko down -v
# tworzymy nowe
docker compose -p srodowisko up -d
# importujemy pliki wordpressa
docker run --rm --volumes-from wordpress -v ${PWD}/backup:/backup busybox tar xvf /backup/backup.tar