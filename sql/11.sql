/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */
select f.film_id, f.title, count(i.film_id) as count
from film as f
join inventory as i
on f.film_id=i.film_id
where f.title ilike 'h%'
group by f.title, f.film_id
order by f.title desc;
