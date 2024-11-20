-- 8 View order_details.
SELECT * FROM order_details;

-- 9 Date range.
SELECT MIN(order_date), MAX(order_date) FROM order_details;
-- jan 1 to march 31st.

-- 10 How many orders in this range.

SELECT COUNT(DISTINCT order_id) FROM order_details;
-- 5370

-- 11 How many items ordered within this range.

SELECT COUNT(*) FROM order_details;
-- 12234.

-- Which order had the most number of items.

SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;
-- 4305, 3473, 1957, 330,440, 443, and 2675.

-- How many orders had more than twelve items.
SELECT COUNT(*) FROM
(SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12) AS num_orders;

-- 20.



