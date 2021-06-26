--------------------
-- Role Definition
--------------------

-- DROP ROLE USER_NAME;
CREATE ROLE USER_NAME WITH
	NOSUPERUSER
	NOCREATEDB
	NOCREATEROLE
	INHERIT
	LOGIN
	NOREPLICATION
	NOBYPASSRLS
	CONNECTION LIMIT -1;


--------------------
-- DataBase Definition
--------------------
CREATE DATABASE DATABASE_NAME WITH
	OWNER = USER_NAME;
