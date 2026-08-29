---Sales Analysis
--Q6. What is the total quantity of products sold?
SELECT SUM(sold_quantity) AS total_quantity_sold
FROM blinkit_data;

--Q7. What is the total sales revenue?
SELECT
    ROUND(SUM(final_price * sold_quantity), 2) AS total_sales_revenue
FROM blinkit_data;

--Q8. Which are the Top 10 products by sales revenue?
SELECT
    product_name,
    ROUND(SUM(final_price * sold_quantity), 2) AS revenue
FROM blinkit_data GROUP BY product_name ORDER BY revenue DESC
LIMIT 10;

--Q9. Which categories generate the highest revenue?
SELECT category,
    ROUND(SUM(final_price * sold_quantity), 2) AS total_revenue
FROM blinkit_data GROUP BY category ORDER BY total_revenue DESC;

--Q10. Which categories have the highest quantity sold?
SELECT
    category,
    SUM(sold_quantity) AS total_quantity_sold
FROM blinkit_data GROUP BY category ORDER BY total_quantity_sold DESC;