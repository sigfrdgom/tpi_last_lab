#!/bin/bash
# -*- ENCODING: UTF-8 -*-

#docker stop glassfish2017
#docker rm -f glassfish2017
#docker rmi   glassfish_tpip1
docker build -t glassfish_tpi_ll .
#docker run --name=glassfish2017 -p 4848:4848 -p 8080:8080 -p 8181:8181 --link  academicaTPI2017:mariaDB -d glassfish_tpi




