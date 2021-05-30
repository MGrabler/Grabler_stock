DELETE CUSTOMER;

INSERT INTO CUSTOMER VALUES (1, 'Grabler@Herman.com', 'Herman', 'Grabler'  , 'm', TO_DATE('1988-07-14', 'yyyy-mm-dd'),  800.50);
INSERT INTO CUSTOMER VALUES (2, 'Sabine2@Herman.com', 'Sabine', 'Maier'  , 'y', TO_DATE('1990-10-10', 'yyyy-mm-dd'),  1000);
INSERT INTO CUSTOMER VALUES (3, 'Sabine2@Her2man.com', 'Sabine', 'Maier'  , 'y', TO_DATE('1990-10-10', 'yyyy-mm-dd'),  1000);
INSERT INTO CUSTOMER VALUES (4, 'Sabine2@Herman.c2om', 'Sabine', 'Maier'  , 'y', TO_DATE('1990-10-10', 'yyyy-mm-dd'),  1000);
INSERT INTO CUSTOMER VALUES (5, '1Sabine2@Herman.com', 'Sabine', 'Maier'  , 'y', TO_DATE('1990-10-10', 'yyyy-mm-dd'),  1000);
INSERT INTO CUSTOMER VALUES (6, 'Sabine2Herman.com', 'Sabine', 'Maier'  , 'y', TO_DATE('1990-10-10', 'yyyy-mm-dd'),  0);
INSERT INTO CUSTOMER VALUES (7, 'Grabler2@Her2man', 'Sabine', 'Maier'  , 'y', TO_DATE('1990-10-10', 'yyyy-mm-dd'),  0);
INSERT INTO CUSTOMER VALUES (8, 'Philip@gmx.at', 'Philip', 'Rimser'  , 'm', TO_DATE('2000-1-1', 'yyyy-mm-dd'),  500);

INSERT INTO CUSTOMER VALUES (9, 'Paul@gmx.at', 'Paul', 'Werner'  , 'm', SYSDATE+1,  500);
INSERT INTO CUSTOMER VALUES (10, 'Paul@gmx.at', 'Paul', 'Werner'  , 'm', SYSDATE,  500);

INSERT INTO CUSTOMER VALUES (11, 'Hans@gmx.at', 'Hans', 'Traxler'  , 'm', SYSDATE-1, null);
INSERT INTO CUSTOMER VALUES (12, 'Hans@gmx.at', 'Hans', 'Traxler'  , 'm', SYSDATE-1, -50);

SELECT *
FROM CUSTOMER
ORDER BY CUSTOMER_ID;

UPDATE  CUSTOMER
SET     BIRTHDATE  = TO_DATE('2000-1-1', 'yyyy-mm-dd')
WHERE   CUSTOMER_ID   = 1;

UPDATE  CUSTOMER
SET     CUSTOMER_ID  = 100
WHERE   CUSTOMER_ID   = 1;

SELECT *
FROM CUSTOMER
WHERE CUSTOMER_ID   = 1
ORDER BY CUSTOMER_ID;