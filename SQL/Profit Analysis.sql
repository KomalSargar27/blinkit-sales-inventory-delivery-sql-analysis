--Profit Analysis
--Q11. Calculate the estimated total profit.
SELECT ROUND(
        SUM(
            final_price * sold_quantity * profit_margin_pct / 100 ),2) AS estimated_total_profit
FROM blinkit_data;

--Q12. Which categories generate the highest estimated profit?
SELECT category, ROUND(
        SUM( final_price * sold_quantity * profit_margin_pct / 100),2 ) AS estimated_profit
FROM blinkit_data GROUP BY category ORDER BY estimated_profit DESC;

--Q13. Find the Top 10 most profitable products.
SELECT
    product_name,ROUND(
        SUM(
            final_price *
            sold_quantity *
            profit_margin_pct / 100
        ),
        2
    ) AS estimated_profit

FROM blinkit_data GROUP BY product_name

ORDER BY estimated_profit DESC
LIMIT 10;