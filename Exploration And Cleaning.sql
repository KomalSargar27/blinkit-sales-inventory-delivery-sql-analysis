CREATE TABLE blinkit_data (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100),
    brand VARCHAR(100),
    price DECIMAL(10,2),
    discount_pct DECIMAL(5,2),
    final_price DECIMAL(10,2),
    rating DECIMAL(3,1),
    num_reviews INT,
    delivery_time_min INT,
    city VARCHAR(100),
    seller VARCHAR(100),
    stock INT,
    sold_quantity INT,
    profit_margin_pct DECIMAL(5,2),
    is_organic BOOLEAN,
    packaging_type VARCHAR(50),
    weight_g INT,
    shelf_life_days INT,
    reorder_level INT,
    demand_index INT,
    date_added DATE,
    expiry_date DATE,
    offer_type VARCHAR(100),
    delivery_status VARCHAR(50)
);

---Data Exploration & Cleaning--
--Q1.all records from the dataset.
select * from blinkit_data;

--Q2. Total number of records.
select count(*) as Total_records from blinkit_data

--Q3. Total number of unique products.
SELECT COUNT(DISTINCT product_id) AS total_products
FROM blinkit_data;

--Q4. All unique product categories.
SELECT DISTINCT category FROM blinkit_data
ORDER BY category;


--Q5. Check for missing values in important columns.
SELECT
    COUNT(*) AS total_rows,
    COUNT(product_name) AS product_name_count,
    COUNT(category) AS category_count,
    COUNT(brand) AS brand_count,
    COUNT(price) AS price_count,
    COUNT(final_price) AS final_price_count,
    COUNT(rating) AS rating_count
FROM blinkit_data;

