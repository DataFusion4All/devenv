#!/usr/bin/bash
sudo apt update
sudo apt install wget curl ca-certificates
wget -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt update
sudo apt-get -y install postgresql postgresql-contrib
