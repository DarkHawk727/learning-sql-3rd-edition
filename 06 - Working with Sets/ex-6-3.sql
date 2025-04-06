SELECT t.first_name, t.last_name
FROM (
    SELECT a.first_name, a.last_name
    FROM actor AS a
    WHERE a.last_name LIKE '%L'
    UNION
    SELECT c.first_name, c.last_name
    FROM customer AS c
    WHERE c.last_name LIKE '%L'
) AS t
ORDER BY t.last_name;
