FROM postgres:16

COPY ./demo-medium-20170815.sql /docker-entrypoint-initdb.d/

