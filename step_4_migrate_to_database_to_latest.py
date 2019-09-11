#!/usr/bin/env python
import os

os.system('figlet -w 160 -f standard "Migrate Database to Latest Version"')

os.system('./flyway-4.2.0/flyway info')
os.system('./flyway-4.2.0/flyway migrate')
os.system('./flyway-4.2.0/flyway info')