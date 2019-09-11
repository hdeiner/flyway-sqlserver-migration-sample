#!/usr/bin/env python
import os

os.system('figlet -w 160 -f standard "Create Database to Version 3_2"')

os.system('./flyway-4.2.0/flyway info')
os.system('./flyway-4.2.0/flyway migrate -target=3_2')
os.system('./flyway-4.2.0/flyway info')
