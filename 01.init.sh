#!/bin/bash

mysql -D mariadb_climsoft_test_db_v4 -u root -p root -P 3306 -h 127.0.0.1 <  docker-entrypoint-initdb.d/sql/mariadb_climsoft_db_v4_all.sql
