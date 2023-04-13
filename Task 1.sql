/* A) MARKETING */
# Task 1 - Find the 5 oldest users of the Instagram from the database provided.

WITH base AS (
	SELECT username, created_at
    FROM ig_clone.users
    ORDER BY created_at
    LIMIT 5
    )
    SELECT *
    FROM base;

