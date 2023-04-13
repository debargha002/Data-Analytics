# Task 4 - Identify and suggest the top 5 most commonly used hashtags on the platform.

SELECT t.tag_name,
	COUNT(p.photo_id) AS num_tags
FROM ig_clone.photo_tags p
	INNER JOIN ig_clone.tags t
	ON p.tag_id = t.id
GROUP BY tag_name
ORDER BY num_tags DESC
LIMIT 5;