#!/bin/sh

sudo adduser --quiet --disabled-password --gecos "Postgres" newuser
# echo "postgres:postgres" | sudo chpasswd