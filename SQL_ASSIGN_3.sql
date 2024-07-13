CREATE DATABASE CSV_IMPORT
CREATE SCHEMA DUP1

CREATE TABLE CSV_IMP
(

FIRST_NAME VARCHAR(255) NOT NULL,
LAST_NAME VARCHAR(255) NOT NULL,
ID INTEGER IDENTITY(101,1) PRIMARY KEY,
EMAIL VARCHAR(255) NOT NULL
)

INSERT INTO CSV_IMP
(FIRST_NAME,LAST_NAME,EMAIL)
VALUES
('ARYAN','AWASTHI','aryanawasthi138@gmail.com'),
('RYAN','SHARMA','ryansharma898@gmail.com'),
('SHYYAN','GUPTA','shyyangupta254@gmail.com'),
('EKLAVYA','SINGH','eklavyasingh001@gmail.com')

SELECT * FROM CSV_IMP

SELECT FIRST_NAME,LAST_NAME,EMAIL,
COUNT(*) FROM CSV_IMP
GROUP BY FIRST_NAME,LAST_NAME,EMAIL

DELETE FROM CSV_IMP
WHERE ID NOT IN
(
SELECT MIN(ID)
FROM CSV_IMP
GROUP BY  FIRST_NAME,LAST_NAME,EMAIL
);
SELECT * FROM CSV_IMP



