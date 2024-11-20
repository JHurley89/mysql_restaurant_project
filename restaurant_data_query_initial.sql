USE restaurant_db;

-- 1 . View menu items.
SELECT * from menu_items;

-- 2 Find number of items.
SELECT COUNT(*) from menu_items;
-- 2. 32.

-- 3 Least and most expensive items?
SELECT * from menu_items
ORDER BY price DESC;
-- 3. Shrimp Scampi(most) and Edamame(least)

-- 4 How many italian dishes?
SELECT * from menu_items
WHERE category = 'Italian';
-- 4. nine.

-- 5 most and least expensive Italian.
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

-- 5 Scampi(most) and Spaghetti(least)

-- 6 count number of dishes in each category.

SELECT category, COUNT(menu_item_id) as num_dishes
FROM menu_items
GROUP BY category;

-- 6. 6 American, 8 Asian, 9 Mexican, and 9 Italian.

-- 7 Average dish price.
SELECT category, AVG(price) as avg_price_dishes
FROM menu_items
GROUP BY category;

-- 7 American 10.06, Asain 13.47, Mexican 11.80, and Italian 16.75.



