-- Exercise 1
SELECT order_id, price, row_number() OVER (ORDER BY price DESC) AS rank FROM order_items;

-- Exercise 2
SELECT 
  order_id, 
  price, 
  row_number() OVER (ORDER BY price DESC) AS row_number, 
  rank() OVER (ORDER BY price DESC) AS rank,
  dense_rank() OVER (ORDER BY price DESC) AS dense_rank
FROM
  order_items;

-- Exercise 3, CTE for temporary table
WITH 
order_totals AS (
  SELECT
    order_id,
    SUM(price) AS total_price
  FROM
    order_items
  GROUP BY
    order_id
  ORDER BY
    total_price DESC
)
SELECT 
  order_id, 
  total_price, 
  row_number() OVER (ORDER BY total_price DESC) AS row_number, 
  rank() OVER (ORDER BY total_price DESC) AS rank,
  dense_rank() OVER (ORDER BY total_price DESC) AS dense_rank
FROM order_totals;

-- COPY (
--   SELECT
--     o.order_id,
--     CAST(o.order_purchase_timestamp AS DATE) AS order_date,
--     p.product_category_name as category,
--     c.customer_state as state,
--     i.price,
--     i.freight_value
--   FROM
--     order_items i
--   JOIN
--     orders o ON o.order_id = i.order_id
--   JOIN
--     products p ON p.product_id = i.product_id
--   JOIN
--     customers c ON c.customer_id = o.customer_id
-- ) TO 'olist_extract.csv' (HEADER, DELIMITER ',');

-- Exercise 1
WITH ranked AS (
  SELECT seller_id, order_id, price,
         ROW_NUMBER() OVER (PARTITION BY seller_id ORDER BY price DESC) AS rn
  FROM order_items
)
SELECT * FROM ranked WHERE rn <= 3
ORDER BY seller_id, rn;

-- Using qualify clause
SELECT
  seller_id, order_id, price,
FROM
  order_items
QUALIFY ROW_NUMBER() OVER (PARTITION BY seller_id ORDER BY price DESC) <= 3;

-- Exercise 2: top 3 product categories by total revenue
SELECT
  p.product_category_name,
  SUM(i.price) as total
FROM
  order_items i
JOIN
  products p ON i.product_id = p.product_id
GROUP BY 
  p.product_category_name
ORDER BY 
  total DESC
LIMIT 3

-- Exercise 3
WITH product_revenue AS (
  SELECT
    p.product_category_name,
    i.product_id,
    SUM(i.price) AS total_revenue,
    ROW_NUMBER() OVER (
      PARTITION BY p.product_category_name
      ORDER BY SUM(i.price) DESC
    ) AS rn
  FROM order_items i
  JOIN products p ON i.product_id = p.product_id
  GROUP BY p.product_category_name, i.product_id
)
SELECT * FROM product_revenue
WHERE rn <= 3
ORDER BY product_category_name, rn;

-- Exercise 4 excel
COPY (
  SELECT
    seller_id,
    SUM(price) AS revenue,
    COUNT(*) AS items,
  FROM order_items
  GROUP BY seller_id
) TO 'seller_revenue.csv' (HEADER, DELIMITER ',');

-- XLOOKUP(lookup_value, lookup_array, return_array, [if_not_found]) is a left join in one cell. 
-- The first argument is your join key, the second is where to find it, and the third is the column to bring back.
-- =XLOOKUP(C2; product_category_name_translation__2[product_category_name]; product_category_name_translation__2[product_category_name_english]; "unknown")

-- seller revenue week1_xlookup
SELECT 
  i.seller_id,
  SUM(price) as revenue,
  count(*) as items,
  s.seller_state,
  s.seller_city
FROM
  order_items i
JOIN
  sellers s ON i.seller_id = s.seller_id
GROUP BY i.seller_id, s.seller_state, s.seller_city
ORDER BY revenue DESC;