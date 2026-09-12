CREATE TABLE supplier (
SN TEXT PRIMARY KEY, 
SNAME TEXT,
SAGE INTEGER, 
STATUS INTEGER,
CITY TEXT);

INSERT INTO supplier (SN, SNAME, SAGE, STATUS, CITY)
VALUES ("s1","Mark",18,32,"berlin"),
("s2","Alex",22,45,"Tampere"),
("s3","Larry",18,98,"London"),
("s4","Gon",38,51,"Oulu"),
("s5","Lorenzo",19,99,"Texas"),
("s6","Kaiser",19,24,"Helsinki"),
("s7","Isagi",18,50,"berlin");

SELECT * FROM supplier;

SELECT * FROM supplier WHERE STATUS==98;
SELECT * FROM supplier WHERE CITY=="berlin";
SELECT * FROM supplier WHERE SAGE!=18;
SELECT * FROM supplier WHERE SAGE==18;
SELECT * FROM supplier WHERE SNAME LIKE "L%";
DROP TABLE supplier;
