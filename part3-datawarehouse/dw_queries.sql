-- Q1:
SELECT month, SUM(revenue)
FROM fact_sales f
JOIN dim_date d ON f.date_id=d.date_id
GROUP BY month;

-- Q2:
SELECT store_id, SUM(revenue)
FROM fact_sales
GROUP BY store_id
ORDER BY SUM(revenue) DESC
LIMIT 2;

-- Q3:
SELECT month, SUM(revenue)
FROM fact_sales f
JOIN dim_date d ON f.date_id=d.date_id
GROUP BY month
ORDER BY month;
