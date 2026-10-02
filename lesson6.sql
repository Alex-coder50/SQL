CREATE TABLE IF NOT EXISTS restraunt (
name TEXT,
neighborhood TEXT,
cusine TEXT,
review REAL,
price TEXT,
health TEXT
);
INSERT INTO restraunt (name,neighborhood,cusine,review,price,health)
VALUES
('peter','brooklyn','steak',4.4,'$$$','A'),
('jongro','midtown','korean',3.5,'$$','A'),
('pocha','midtown','pizza',4.0,'$$$','B'),
('lighthouse','queens','chinese',3.9,'$','A'),
('minca','downtown','american',4.6,'$$$',''),
('marea','chinatown','chinese',3.0,'$$',''),
('dirty candy','uptown','italian',4.9,'$$$','B'),
('di fara pizza','brooklyn','pizza',3.8,'$$','A'),
('golden unicorn','uptown','italian',3.8,'$$','A');

SELECT * FROM restraunt;

SELECT DISTINCT neighborhood FROM restraunt;

SELECT DISTINCT cusine FROM restraunt;

SELECT * FROM restraunt WHERE cusine == 'chinese' ;

SELECT * FROM restraunt WHERE review >= 4.0;

SELECT * FROM restraunt WHERE cusine == 'italian' and price == '$$$';

SELECT * FROM restraunt WHERE name LIKE '%candy';

SELECT * FROM restraunt WHERE neighborhood IN ('midtown','downtown','chinatown');

SELECT * FROM restraunt WHERE health IS NULL OR health == '' ;

SELECT * FROM restraunt ORDER BY review DESC LIMIT 4;


DROP TABLE restraunt;
