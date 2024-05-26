# tworzymy dump bazy danych
docker exec mysql /usr/bin/mysqldump -u root --password=rootpass exampledb > backup/backup.sql
# tworzymy kopię volumena wordpressa i kompresujemy ją do archiwum
docker run --rm --volumes-from wordpress -v ${PWD}/backup:/backup busybox tar czvf /backup/backup.tar /var/www/html