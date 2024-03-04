FROM mysql/mysql-server:latest

COPY cattle_data.csv /cattle_data.csv

COPY init.sql /docker-entrypoint-initdb.d/init.sql
