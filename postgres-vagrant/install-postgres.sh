#!/bin/sh

sudo apt install -y make gcc libreadline-dev zlib1g-dev
cd /
sudo wget https://ftp.postgresql.org/pub/source/v11.1/postgresql-11.1.tar.gz
sudo wget https://ftp.postgresql.org/pub/source/v11.1/postgresql-11.1.tar.gz.sha256
shasum -c postgresql-11.1.tar.gz.sha256
gunzip postgresql-11.1.tar.gz
tar xf postgresql-11.1.tar
cd postgresql-11.1
./configure
make all
make install
export PATH=/usr/local/pgsql/bin:$PATH