#!/usr/bin/env python
import os
import subprocess
import time

os.system('figlet -w 160 -f standard "Create SQL Server Container"')
os.system('docker-compose -f dockercompose-microsoft-sqlserver-ubuntu.yml up -d')

print("waiting for SQL Server to start")
ready = False
DEVNULL = open(os.devnull, 'wb')
while not ready:
    process = subprocess.Popen(["sqlcmd", "-S", "localhost",  "-U",  "SA",  "-P", "itsaSECRET1!",  "-Q",  "SELECT 1"], stdout=subprocess.PIPE, stderr=DEVNULL)
    while True and not ready:
        line = process.stdout.readline()
        if not line:
            break
        ready = '(1 rows affected)' in line.decode('utf-8')
    time.sleep(1)

# Oracle 12.2.0.1
#while not ready:
#process = subprocess.Popen(["docker","ps"], stdout=subprocess.PIPE)
#while True and not ready:
#    line = process.stdout.readline()
#    if not line:
#        break
#    ready = "(healthy)" in line.decode('utf-8') and "oracle" in line.decode('utf-8')
#time.sleep(1)