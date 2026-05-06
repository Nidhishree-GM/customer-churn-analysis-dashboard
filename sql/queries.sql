-- Total Customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Churn Rate
SELECT 
ROUND((SUM(churned) * 100.0 / COUNT(*)),2) AS churn_rate
FROM customers;

-- Revenue by Plan Type
SELECT 
plan_type,
SUM(monthly_revenue) AS total_revenue
FROM customers
GROUP BY plan_type;

-- Churn by Industry
SELECT 
industry,
ROUND(AVG(churned) * 100,2) AS churn_rate
FROM customers
GROUP BY industry
ORDER BY churn_rate DESC;

-- Revenue Lost from Churned Customers
SELECT 
SUM(monthly_revenue) AS revenue_lost
FROM customers
WHERE churned = 1;