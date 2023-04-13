# Task 2 - Find the users who have never posted a single photo on Instagram.

SELECT u.username
FROM ig_clone.users u
LEFT JOIN ig_clone.photos p
ON u.id = p.user_id
WHERE p.user_id IS null
ORDER BY u.username;