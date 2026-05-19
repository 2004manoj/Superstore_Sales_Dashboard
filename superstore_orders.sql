-- 1. What is the total sales?
select sum(sales)
from orders;

-- 2. Which region has the highest sales?
select region,sum(sales) as Total_sales
from orders
group by region
order by Total_sales desc;

-- 3. Which category generates the most sales?
select category,sum(sales) as Total_sales
from orders
group by category
order by Total_sales desc;

-- 4. Which sub-category has the highest sales?
select sub_category,sum(sales) as Total_sales
from orders
group by sub_category
order by Total_sales desc;

-- 5. Which customer segment purchases the most?

SELECT segment,
SUM(sales) AS Total_Sales
FROM orders
GROUP BY segment
ORDER BY Total_Sales DESC;

-- 6. What are the monthly sales trends?

SELECT EXTRACT(MONTH FROM order_date) AS monthly,
SUM(sales) AS total_sales
FROM orders
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY monthly ASC;

-- 7. Which cities have highest sales?

select city,sum(sales) as Total_sales
from orders
group  by city
order by Total_sales desc;

-- 8. What is the average sales per order?

SELECT AVG(sales) AS Average_Sales
FROM orders;

-- 9. Which products are top-selling?
select product_name,sum(sales) as Total_sales
from orders
group by product_name
order by Total_sales desc
limit 10;

-- 10. Which shipping mode is most used?

SELECT ship_mode,
COUNT(*) AS Total_Orders
FROM orders
GROUP BY ship_mode
ORDER BY Total_Orders DESC;

-- 11. Which month had the highest sales?

SELECT EXTRACT(MONTH FROM order_date) AS monthly,
SUM(sales) AS Total_Sales
FROM orders
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY Total_Sales DESC;

-- 12. Top 10 customers by sales

SELECT customer_name,
SUM(sales) AS Total_Sales
FROM orders
GROUP BY customer_name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 13. Year-wise Sales
SELECT year,
SUM(sales) AS Total_Sales
FROM orders
GROUP BY year
ORDER BY year;

--14. top state by sales 
SELECT state,
SUM(sales) AS Total_Sales
FROM orders
GROUP BY state
ORDER BY Total_Sales DESC;

--15. Average Sales by Category
SELECT category,
ROUND(CAST(AVG(sales) AS numeric), 2) AS average_sales
FROM orders
GROUP BY category;

--16. Highest Sales Product in Each Category
SELECT category,
MAX(sales) AS Highest_Sale
FROM orders
GROUP BY category;

