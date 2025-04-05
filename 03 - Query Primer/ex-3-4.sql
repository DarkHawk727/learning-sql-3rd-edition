SELECT c.email, r.return_date
FROM customer AS c
    INNER JOIN rental AS r
    ON c.customer_id=r.customer_id
WHERE date(r.rental_date)='2005-06-14'
ORDER BY 2 DESC;
-- 2 is the second column in the SELECT list so its equivalent to ORDER BY r.return_date DESC;
