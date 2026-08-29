--Customer Rating Analysis

--Q23. Which categories have the highest average product rating?
SELECT
    category,
    ROUND(AVG(rating), 2) AS average_rating
FROM blinkit_data
GROUP BY category
ORDER BY average_rating DESC;

--Q24. Products with high ratings but low sales.
SELECT product_name, category, rating, sold_quantity
FROM blinkit_data
WHERE rating >= 4.5
AND sold_quantity < (
    SELECT AVG(sold_quantity)
    FROM blinkit_data
)
ORDER BY rating DESC;