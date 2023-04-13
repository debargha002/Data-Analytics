# Task 2- Provide data on users (bots) who have liked every single photo on the site (since any normal user would not be able to do this).

WITH photo_count AS (SELECT user_id,
					COUNT(photo_id) AS num_like
FROM ig_clone.likes
					GROUP BY user_id 
					ORDER BY num_like DESC )
SELECT *
FROM photo_count
WHERE num like =
	COUNT(photo_id) AS num_like
	(SELECT count(*) FROM ig_clone.photos)