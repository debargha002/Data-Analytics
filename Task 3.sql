#Task 3 - Identify the winner of the contest and provide their details to the team.

WITH base AS (
	SELECT likes.photo_id, users.username,
	COUNT(likes.user_id) AS like_user
	FROM ig_clone.likes likes
	INNER JOIN ig_clone.photos photos
	On likes.photo_id = photos.id
	INNER JOIN ig_clone.users users
	ON photos.user_id = users.id
	GROUP BY likes.photo_id, users.username
	ORDER BY like_user DESC
	LIMIT 1
	)
SELECT username FROM base;