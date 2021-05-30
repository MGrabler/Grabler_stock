CREATE USER GRABLER PROFILE "DEFAULT" IDENTIFIED BY "oracle"
DEFAULT TABLESPACE    USERS
TEMPORARY TABLESPACE  TEMP
ACCOUNT UNLOCK;

GRANT SELECT ANY DICTIONARY TO GRABLER;
GRANT UNLIMITED TABLESPACE  TO GRABLER;
GRANT CONNECT               TO GRABLER;
GRANT RESOURCE              TO GRABLER;

GRANT CREATE TABLE          TO GRABLER;
GRANT CREATE SEQUENCE       TO GRABLER;
