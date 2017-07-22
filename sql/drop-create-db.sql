
DROP DATABASE tariffs;
DROP USER openapi;

-- User: openapi
CREATE USER openapi WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION
  PASSWORD 'qazwsx';

-- Database: tariffs
CREATE DATABASE tariffs
    WITH
    OWNER = openapi
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.UTF-8'
    LC_CTYPE = 'en_US.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

\connect tariffs;

-- SCHEMA: tariffs_schema
CREATE SCHEMA tariffs_schema
    AUTHORIZATION openapi;
