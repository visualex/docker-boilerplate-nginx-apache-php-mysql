FROM mariadb:latest

# preloads all the mysqldump .sql files that are in this folder
COPY ./*.sql /docker-entrypoint-initdb.d/

ENV MYSQL_ROOT_PASSWORD=roots
ENV MYSQL_USER=another_user
ENV MYSQL_PASSWORD=somepassword123
