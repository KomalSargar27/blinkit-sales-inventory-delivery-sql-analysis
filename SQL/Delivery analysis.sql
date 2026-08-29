--Delivery Analysis

--Q17. What is the percentage of On-Time and Delayed deliveries?
SELECT delivery_status,
 COUNT(*) AS total_deliveries,
 ROUND(COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (),
        2
    ) AS delivery_percentage
FROM blinkit_data
GROUP BY delivery_status;

--Q18. Which cities have the highest number of delayed deliveries?
SELECT city,
    COUNT(*) AS delayed_deliveries
FROM blinkit_data
WHERE delivery_status = 'Delayed'
GROUP BY city
ORDER BY delayed_deliveries DESC;

--Q19. What is the average delivery time in each city?
SELECT  city,
    ROUND(AVG(delivery_time_min), 2) AS average_delivery_time_minutes
FROM blinkit_data
GROUP BY city
ORDER BY average_delivery_time_minutes DESC;