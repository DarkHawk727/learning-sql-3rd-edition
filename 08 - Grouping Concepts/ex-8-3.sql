SELECT customer_id, COUNT(payment_id) AS n_payments, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING n_payments >= 40;
