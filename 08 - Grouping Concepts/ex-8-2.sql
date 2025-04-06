SELECT customer_id, COUNT(payment_id), SUM(amount)
FROM payment
GROUP BY customer_id;
