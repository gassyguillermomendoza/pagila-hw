/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */
SELECT last_name last_name, count(*) last_name_count
From actor
GROUP BY last_name
having COUNT(*)>= 2 ORDER BY last_name_count desc;

