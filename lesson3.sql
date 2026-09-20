CREATE TABLE IF NOT EXISTS zoo_animal(
animal_id INTEGER PRIMARY KEY,
name TEXT NOT NULL, 
species TEXT NOT NULL,
age_years INTEGER NOT NULL,
weight_kg REAL NOT NULL);

INSERT INTO zoo_animal(animal_id,name,species,age_years,weight_kg)
VALUES(1,"LION","BIG CAT",5,190.0),
(2,"TIGER","BIG CAT",3,220.0),
(3,"ELEPHANT","PACHYDERM",12,4500.0),
(4,"GIRAFFE","UNGULATE",7,800.0),
(5,"PENGUIN","BIRD",2,5.0),
(6,"PANDA","BEAR",6,95.0),
(7,"CHEETAH","BIG CAT",4,55.0),
(8,"RHINO","PACHYDERM",9,2300.0);

SELECT * FROM zoo_animal;


SELECT species FROM zoo_animal;
SELECT DISTINCT species FROM zoo_animal;

SELECT COUNT(DISTINCT species)AS unique_species FROM zoo_animal;

SELECT COUNT(animal_id)AS total_animals FROM zoo_animal;

SELECT COUNT(animal_id)AS older_than_5 FROM     zoo_animal WHERE age_years > 5 ;

SELECT SUM(weight_kg)AS total_weight_kg FROM zoo_animal;   

SELECT AVG(age_years)AS avg_age_year FROM zoo_animal;

SELECT 
COUNT(animal_id)AS total_animals,
COUNT(DISTINCT species)AS unique_species,
SUM(weight_kg)AS total_weight_kg,
AVG(age_years)AS avg_age_years
FROM zoo_animal;
 
DROP TABLE zoo_animal;