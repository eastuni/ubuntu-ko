#!/bin/bash

configMysql() {
    # Hack to get MySQL up and running... I need to look into it more.
    mysqld --initialize  --user=mysql --basedir=/usr/local/mysql/default --datadir=/var/mysqld/data
}

configMysql
