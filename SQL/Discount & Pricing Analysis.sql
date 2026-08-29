--Discount and Pricing Analysis

--Q20. Which categories offer the highest average discount?
SELECT category,
    ROUND(AVG(discount_pct), 2) AS average_discount
FROM blinkit_data GROUP BY category
ORDER BY average_discount DESC;

--Q21. Find the Top 10 products with the highest discount.
SELECT product_name, category, price, discount_pct, final_price
FROM blinkit_data
ORDER BY discount_pct DESC
LIMIT 10;

--Q22. Do higher discounts lead to higher sales?
SELECT
    CASE
        WHEN discount_pct = 0 THEN 'No Discount'
        WHEN discount_pct <= 10 THEN '1-10%'
        WHEN discount_pct <= 25 THEN '11-25%'
        WHEN discount_pct <= 50 THEN '26-50%'
        ELSE 'Above 50%'
    END AS discount_category,
	ROUND(AVG(sold_quantity), 2) AS avg_quantity_sold
FROM blinkit_data
GROUP BY discount_category
ORDER BY avg_quantity_sold DESC;