CREATE TABLE marine_observation (
animal_name TEXT PRIMARY KEY, animal_group TEXT NOT NULL, habitat TEXT NOT NULL, depth_m INTEGER, estimated_weight_kg);

INSERT INTO marine_observation(
animal_name, animal_group, habitat, depth_m, estimated_weight_kg)
VALUES
("Shark", "Shiver", "Open ocean waters, coastal reefs and continental shelves", 1875 , 2000),
("Dolphin", "Pod","Shallow coastal areas, bays, lagoons, and tropical oceans", 200 ,300 ),
("Jellyfish", "Smack", "Pelagic ocean zones, surface waters, and deep benthic zones",1000 ,200 ),
("Stingray", "Fever", "Shallow sandy sea floors, estuaries, and coral reefs", 100,	32),
("Starfish", "Galaxy", "Intertidal rocky shores, coral reefs, and abyssal seafloors",6000, 5);

SELECT * FROM marine_observation;

SELECT animal_group FROM marine_observation;

SELECT DISTINCT animal_group FROM marine_observation;

SELECT COUNT(DISTINCT animal_group) AS unique_animal_groups
FROM marine_observation;

SELECT COUNT(observation_id) AS total_observations
FROM marine_observation;

SELECT COUNT(observation_id) AS open_ocean_observations
FROM marine_observation
WHERE habitat = 'Open Ocean';

SELECT SUM(estimated_weight_kg) AS total_estimated_weight_kg
FROM marine_observation;

SELECT AVG(depth_m) AS average_observation_depth_m
FROM marine_observation;

SELECT
    COUNT(observation_id)        AS total_observations,
    COUNT(DISTINCT animal_group) AS unique_animal_groups,
    SUM(estimated_weight_kg)     AS total_estimated_weight_kg,
    AVG(depth_m)                 AS average_observation_depth_m
FROM marine_observation;
