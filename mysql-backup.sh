#!/bin/sh
[ -d "/backup/full" ]&&mkdir /backup/full
innobackupex --user=root --password=123 --no-timestamp  /backup/full/
for i in {1..10};do
[ -d "/backup/zengliang$i" ]||continue &&mkdir /backup/zengliang1
innobackupex --user=root --password=123 --no-timestamp --incremental /backup/zengliang1/ --incremental-basedir=/backup/full/
[ -d "/backup/zengliang2" ]&&mkdir /backup/zengliang2
innobackupex --user=root --password=123 --no-timestamp --incremental /backup/zengliang2/ --incremental-basedir=/backup/full/
