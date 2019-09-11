#!/usr/bin/env python
import os

os.system('figlet -w 160 -f standard "Destroy SQL Server Container"')
os.system('docker-compose -f dockercompose-microsoft-sqlserver-ubuntu.yml down')
os.system('docker volume prune --force')