USE restaurant_db;
-- CIAN SQL PROJECT!

-- 1. View the menue items from the table
SELECT* FROM menu_items;

-- 2. Find the number of items in this table
SELECT COUNT(*) FROM menu_items;

-- 3.What are the least and most expensive items on the menue?
SELECT* FROM menu_items
ORDER BY price;

SELECT MAX(price) FROM menu_items;

-- 4. How many Italian dishes are on the menu?
SELECT COUNT(*) FROM menu_items
WHERE category = 'Italian';

-- 5. What are the least and most expensive Italian dishes?
SELECT * FROM menu_items
WHERE category ='Italian'
ORDER BY price DESC;

-- 6. How many dishes are each category?
SELECT category,COUNT(item_name) AS num_dishes FROM menu_items 
GROUP BY category;

-- 7. What is the Average dish price in each category?
SELECT category, AVG(price) AS Avg_price FROM menu_items 
GROUP BY category;


