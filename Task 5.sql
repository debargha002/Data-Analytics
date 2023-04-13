# Task 5 - What day of the week do most users register on? Provide insights on when to schedule an ad campaign.

/* 0- Monday; 1- Tuesday; 2- Wednesday; 3- Thursday; 4- Friday; 5- Saturday; 6- Sunday; */

SELECT weekday(created_at) AS weekday,
COUNT(username) AS num_users
FROM ig_clone.users
GROUP BY 1
ORDER BY 1;