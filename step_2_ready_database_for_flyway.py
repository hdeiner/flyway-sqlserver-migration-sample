#!/usr/bin/env python
import os

os.system('figlet -w 160 -f standard "Ready Database for Flyway"')

os.system('sqlcmd -S localhost -U  SA  -P itsaSECRET1! -Q "USE MASTER;"')
os.system('sqlcmd -S localhost -U  SA  -P itsaSECRET1! -Q "CREATE LOGIN FLYWAY WITH PASSWORD=\'FLYWAY1234_\', DEFAULT_DATABASE=MASTER;"')
os.system('sqlcmd -S localhost -U  SA  -P itsaSECRET1! -Q "CREATE USER FLYWAY;"')
os.system('sqlcmd -S localhost -U  SA  -P itsaSECRET1! -Q "GRANT ALL TO FLYWAY WITH GRANT OPTION;"')
os.system('sqlcmd -S localhost -U  SA  -P itsaSECRET1! -Q "GRANT CREATE SCHEMA TO FLYWAY WITH GRANT OPTION;"')
os.system('sqlcmd -S localhost -U  SA  -P itsaSECRET1! -Q "ALTER LOGIN FLYWAY ENABLE;"')
os.system('sqlcmd -S localhost -U  SA  -P itsaSECRET1! -Q "ALTER USER FLYWAY WITH DEFAULT_SCHEMA=MASTER;"')
