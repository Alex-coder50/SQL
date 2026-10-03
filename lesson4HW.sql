CREATE TABLE IF NOT EXISTS community_activity (
    activity_id INTEGER PRIMARY KEY,
    activity_name TEXT NOT NULL,
    activity_type TEXT NOT NULL,
    day TEXT NOT NULL,
    participants INTEGER NOT NULL,
    duration_mins INTEGER NOT NULL
);

INSERT INTO community_activity
VALUES (1, 'Basketball Club', 'Sports', 'Monday', 21, 80);
INSERT INTO community_activity VALUES (2, 'Drawing Class', 'Creative', 'Tuesday', 11, 70);
INSERT INTO community_activity VALUES (3, 'Game Night', 'Games', 'Wednesday', 17, 90);
INSERT INTO community_activity VALUES (4, 'Fitness Class', 'Wellness', 'Thursday', 19, 60);
INSERT INTO community_activity VALUES (5, 'Python Club', 'Learning', 'Friday', 13, 85);
INSERT INTO community_activity VALUES (6, 'Movie Club', 'Entertainment', 'Saturday', 24, 120);
INSERT INTO community_activity VALUES (7, 'Photography Club', 'Creative', 'Saturday', 9, 75);
INSERT INTO community_activity VALUES (8, 'Football Club', 'Sports', 'Sunday', 26, 90);
INSERT INTO community_activity VALUES (9, 'Cooking Class', 'Learning', 'Sunday', 15, 65);

SELECT * FROM community_activity;

SELECT activity_name, participants
FROM community_activity
ORDER BY participants ASC;

SELECT activity_name, participants
FROM community_activity
ORDER BY participants DESC;

SELECT activity_name, activity_type, participants
FROM community_activity
ORDER BY activity_type ASC, participants DESC;

SELECT activity_name, participants
FROM community_activity
ORDER BY participants DESC
LIMIT 3;

SELECT activity_name, duration_mins
FROM community_activity
ORDER BY duration_mins ASC
LIMIT 5;

SELECT activity_type, COUNT(*) AS activity_count
FROM community_activity
GROUP BY activity_type;

SELECT activity_type,
       SUM(participants) AS total_participants,
       AVG(duration_mins) AS average_duration_mins
FROM community_activity
GROUP BY activity_type;



SELECT activity_type, COUNT(*) AS activity_count
FROM community_activity
GROUP BY activity_type
HAVING COUNT(*) > 2;

SELECT activity_type, AVG(participants) AS average_participants
FROM community_activity
GROUP BY activity_type

HAVING AVG(participants) >= 15;

