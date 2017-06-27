FROM        mariadb

#MANTAINER gg13008@ues.edu.sv

#RUTA DEL SCRIPT

COPY 	 registro.sql docker-entrypoint-initdb.d/
ENV MYSQL_ROOT_PASSWORD=1234
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]

