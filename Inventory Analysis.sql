--Inventory Analysis

--Q14. Which products are below their reorder level?
SELECT
    product_name, category, stock, reorder_level
FROM blinkit_data
WHERE stock < reorder_level
ORDER BY stock ASC;

--Q15. Identify products with high demand but low stock.
SELECT
    product_name, category, stock, demand_index
FROM blinkit_data
WHERE stock < reorder_level
AND demand_index > (
    SELECT AVG(demand_index)
    FROM blinkit_data
)
ORDER BY demand_index DESC;

--Q16. Categorize inventory into stock risk levels.
SELECT
    product_name, stock, reorder_level,
 CASE
        WHEN stock < reorder_level THEN 'Critical Stock'
        WHEN stock <= reorder_level * 1.5 THEN 'Low Stock'
        ELSE 'Healthy Stock'
    END AS inventory_status
FROM blinkit_data;

