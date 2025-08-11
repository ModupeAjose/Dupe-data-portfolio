-- Total revenue by region
SELECT
    region,
    SUM(quantity * unit_price) AS total_revenue
FROM data.sales
GROUP BY region
ORDER BY total_revenue DESC;

-- Top-selling products
SELECT
    product,
    SUM(quantity) AS total_units_sold
FROM data.sales
GROUP BY product
ORDER BY total_units_sold DESC;

-- Revenue by category
SELECT
    category,
    SUM(quantity * unit_price) AS total_revenue
FROM data.sales
GROUP BY category;
