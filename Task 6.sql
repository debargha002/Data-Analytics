/* B) Investor Metrics */
# Task 1- Provide how many times does average user posts on Instagram. Also, provide the total number of photos on Instagram/total number of users.

WITH CTE AS (
SELECT u.id AS user_id,
COUNT (p.id) AS photo_id
FROM ig_clone.users AS u
LEFT JOIN ig_clone.photos p
ON u.id = p.user_id
GROUP BY u.id
	)
SELECT SUM (photo_id) AS total photos,
COUNT (user_id) AS total_users,
SUM (photo_id)/COUNT(user_id) AS total_posts_by_user
FROM CTE;