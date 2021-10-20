-----------------------------
-- USERS
-----------------------------
-- Role: user_admin
-- DROP ROLE IF EXISTS user_admin;

CREATE ROLE user_admin WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  REPLICATION
  ENCRYPTED PASSWORD 'md5d2442f4a1c8fccc0bc79c80d0212022a';

-- Database: users

-- DROP DATABASE IF EXISTS users;

CREATE DATABASE users
    WITH 
    OWNER = naat_admin
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

GRANT TEMPORARY ON DATABASE users TO user_admin WITH GRANT OPTION;

GRANT TEMPORARY, CONNECT ON DATABASE users TO PUBLIC;

GRANT ALL ON DATABASE users TO naat_admin;



---------------------
-- PROJECTS
---------------------
-- Role: projects_users
-- DROP ROLE IF EXISTS projects_users;

CREATE ROLE projects_users WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  REPLICATION
  ENCRYPTED PASSWORD 'md57fed7e65e709618a5ffd24c420b4e1ce';



-- Database: projects

-- DROP DATABASE IF EXISTS projects;

CREATE DATABASE projects
    WITH 
    OWNER = naat_admin
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

GRANT TEMPORARY, CONNECT ON DATABASE projects TO PUBLIC;

GRANT ALL ON DATABASE projects TO naat_admin;

GRANT TEMPORARY ON DATABASE projects TO projects_users WITH GRANT OPTION;


---------------------
--- CLIENTS
---------------------
-- Role: client_users
-- DROP ROLE IF EXISTS client_users;

CREATE ROLE client_users WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md5e7489d3203be5b621f357e5f8ca7dc4f';

  -- Database: clients

-- DROP DATABASE IF EXISTS clients;

CREATE DATABASE clients
    WITH 
    OWNER = naat_admin
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

GRANT TEMPORARY, CONNECT ON DATABASE clients TO PUBLIC;

GRANT TEMPORARY ON DATABASE clients TO client_users WITH GRANT OPTION;

GRANT ALL ON DATABASE clients TO naat_admin;



-------------------------
--   ACTIVITIES
-------------------------
-- Role: activities_user
-- DROP ROLE IF EXISTS activities_user;

CREATE ROLE activities_user WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md5ea4296239a2063c74fc3e4d8027b0fc8';

  -- Database: activities

-- DROP DATABASE IF EXISTS activities;

CREATE DATABASE activities
    WITH 
    OWNER = activities_user
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

GRANT CREATE, CONNECT ON DATABASE activities TO activities_user;
GRANT TEMPORARY ON DATABASE activities TO activities_user WITH GRANT OPTION;

GRANT TEMPORARY, CONNECT ON DATABASE activities TO PUBLIC;




-------------------------
--   NEWS
-------------------------

-- Role: news_user
-- DROP ROLE IF EXISTS news_user;

CREATE ROLE news_user WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md536704997b8e084426d6cdc20a0549710';

-- Database: news

-- DROP DATABASE IF EXISTS news;

CREATE DATABASE news
    WITH 
    OWNER = naat_admin
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

GRANT TEMPORARY, CONNECT ON DATABASE news TO PUBLIC;

GRANT TEMPORARY ON DATABASE news TO news_user WITH GRANT OPTION;

GRANT ALL ON DATABASE news TO naat_admin;


-------------------------
--   ACTIVITY RECORD
-------------------------

-- Role: records_user
-- DROP ROLE IF EXISTS records_user;

CREATE ROLE records_user WITH
  LOGIN
  SUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md5102a8c54aa26e8bc9694c0e4f7649e3b';


-- Database: records

-- DROP DATABASE IF EXISTS records;

CREATE DATABASE records
    WITH 
    OWNER = naat_admin
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
