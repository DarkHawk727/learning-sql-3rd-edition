SELECT c.first_name, c.last_name, SUM(p.amount)
FROM payment AS p
    RIGHT OUTER JOIN customer AS c -- RIGHT OUTER JOINs not supported yet :/
    ON c.customer_id = p.customer_id
GROUP BY c.customer_id;
