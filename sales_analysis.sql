-- =====================================================
-- Project: E-Commerce Sales Performance Analysis
-- Description: SQL queries using a single sales table
-- Dataset Size: ~10,000 cleaned e-commerce transactions
-- =====================================================


-- =========================
-- BASIC DATA CHECK
-- =========================

-- View sample records
SELECT *
FROM sales
LIMIT 10;

-- Total number of rows
SELECT COUNT(*) AS total_rows
FROM sales;


-- =========================
-- CORE KPI METRICS
-- =========================

-- Total Revenue
SELECT
    SUM(revenue) AS total_revenue
FROM sales;

-- Total Orders
SELECT
    COUNT(DISTINCT order_id) AS total_orders
FROM sales;

-- Total Products Sold
SELECT
    SUM(qty) AS total_products_sold
FROM sales;

-- Average Order Value (AOV)
SELECT
    SUM(revenue) / COUNT(DISTINCT order_id) AS average_order_value
FROM sales;


-- =========================
-- CATEGORY ANALYSIS
-- =========================

-- Category-wise Revenue
SELECT
    category,
    SUM(revenue) AS category_revenue
FROM sales
GROUP BY category
ORDER BY category_revenue DESC;

-- Category-wise Units Sold
SELECT
    category,
    SUM(qty) AS total_units_sold
FROM sales
GROUP BY category
ORDER BY total_units_sold DESC;


-- =========================
-- TIME-BASED ANALYSIS
-- =========================

-- Daily Revenue Trend
SELECT
    DATE(order_date) AS order_day,
    SUM(revenue) AS daily_revenue
FROM sales
GROUP BY DATE(order_date)
ORDER BY order_day;


-- =========================
-- BUSINESS INSIGHT QUERIES
-- =========================

-- Top Performing Categories
SELECT
    category,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 5;

-- Lowest Performing Categories
SELECT
    category,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue ASC
LIMIT 5;

-- High-Volume but Low-Revenue Categories
SELECT
    category,
    SUM(qty) AS total_units_sold,
    SUM(revenue) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_units_sold DESC;


-- =========================
-- DATA VALIDATION CHECKS
-- =========================

-- Check for NULL values in critical columns
SELECT
    COUNT(*) AS missing_values
FROM sales
WHERE
    order_id IS NULL
    OR order_date IS NULL
    OR category IS NULL
    OR qty IS NULL
    OR revenue IS NULL;

-- Duplicate Order Check
SELECT
    order_id,
    COUNT(*) AS record_count
FROM sales
GROUP BY order_id
HAVING COUNT(*) > 1;


-- =====================================================
-- END OF SQL SCRIPT
-- =====================================================
