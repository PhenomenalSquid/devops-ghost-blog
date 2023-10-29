sudo docker exec devops-blog_db_1 /usr/bin/mysqldump -u root --password=$GHOST_DBPW --all-databases > /opt/backup/backup.sql
