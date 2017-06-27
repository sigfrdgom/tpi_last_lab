#!/bin/bash
# -*- ENCODING: UTF-8 -*-
#docker stop academicaTPI2017
#docker rm -f academicaTPI2017
docker rmi -f mariadb_tpi_ll
docker build -t mariadb_tpi_ll .
docker run --name tpill -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1234 -d mariadb_tpi_ll


