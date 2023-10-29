cat /opt/backup/backup.sql | docker exec -i devops-blog_db_1 /usr/bin/mysql -u root --password=$GHOST_DBPW DATABASE
