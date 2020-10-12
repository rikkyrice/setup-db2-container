#!/bin/bash

export PATH=/database/config/db2inst1/sqllib/bin/:$PATH

db2 connect to USERDB user db2inst1 using password

# テーブル作成
db2 -tvf /var/custom/sql/users_create.sql
db2 -tvf /var/custom/sql/tweets_create.sql
db2 -tvf /var/custom/sql/replys_create.sql

# データを挿入
db2 import from /var/custom/data/users_insert.csv of del insert into users
db2 import from /var/custom/data/tweets_insert.csv of del insert into tweets
db2 import from /var/custom/data/replys_insert.csv of del insert into replys

# Terminate
db2 terminate
touch /tmp/end.txt