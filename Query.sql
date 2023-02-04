-- The average amount of standard paper sold on the first month that any order was placed in the orders table (in terms of quantity).
SELECT AVG(standard_qty)
FROM orders
WHERE DATE_TRUNC('month', occurred_at) = (SELECT DATE_TRUNC('month', occurred_at)
                                          FROM orders
                                          ORDER BY occurred_at
                                          LIMIT 1);

-- The average amount of gloss paper sold on the first month that any order was placed in the orders table (in terms of quantity).
SELECT AVG(gloss_qty)
FROM orders
WHERE DATE_TRUNC('month', occurred_at) = (SELECT DATE_TRUNC('month', occurred_at)
                                          FROM orders
                                          ORDER BY occurred_at
                                          LIMIT 1);

-- The average amount of poster paper sold on the first month that any order was placed in the orders table (in terms of quantity).
SELECT AVG(poster_qty)
FROM orders
WHERE DATE_TRUNC('month', occurred_at) = (SELECT DATE_TRUNC('month', occurred_at)
                                          FROM orders
                                          ORDER BY occurred_at
                                          LIMIT 1);

-- The total amount spent on all orders on the first month that any order was placed in the orders table (in terms of usd).
SELECT SUM(total_amt_usd)
FROM orders
WHERE DATE_TRUNC('month', occurred_at) = (SELECT DATE_TRUNC('month', occurred_at)
                                          FROM orders
                                          ORDER BY occurred_at
                                          LIMIT 1);