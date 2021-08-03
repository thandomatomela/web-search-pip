#!/bin/bash

cd /
systemctl enable mysql.service
systemctl start mysql.service
sudo mysql web-search-db < db.sql
