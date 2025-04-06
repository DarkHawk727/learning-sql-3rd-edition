SELECT c.first_name, c.last_name, a.address, ct.city
FROM customer AS c
    INNER JOIN address AS a
    ON c.address_id = a.address_id
    INNER JOIN city as ct
    ON a.city_id = ct.city_id
WHERE a.district = 'California';
