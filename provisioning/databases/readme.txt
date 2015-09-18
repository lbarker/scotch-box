place in here sql files that will be used by the provisioning script:
- name of file should be DATABASENAME.sql
- file should contain only table create and inserts -- no CREATE DATABASE and USE commands
- when provisioning is done, any existing database named DATABASENAME will be dropped and recreated using the new SQL.
