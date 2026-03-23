CREATE TABLE dim_date (
  date_id DATE PRIMARY KEY,
  month INT,
  year INT
);

CREATE TABLE dim_store (
  store_id INT PRIMARY KEY,
  store_name VARCHAR(50)
);

CREATE TABLE dim_product (
  product_id INT PRIMARY KEY,
  category VARCHAR(50)
);

CREATE TABLE fact_sales (
  sale_id INT PRIMARY KEY,
  date_id DATE,
  store_id INT,
  product_id INT,
  revenue DECIMAL(10,2),
  quantity INT
);
