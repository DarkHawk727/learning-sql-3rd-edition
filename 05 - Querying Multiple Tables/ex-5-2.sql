SELECT f.title
FROM film as f
    INNER JOIN film_actor AS fa
    ON fa.film_id = f.film_id
    INNER JOIN actor AS a
    ON fa.actor_id = a.actor_id
WHERE a.first_name = 'JOHN';
