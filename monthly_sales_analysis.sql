SELECT
  strftime('%Y-%m', "Order Date") AS sales_month,
  SUM(Amount) AS total_revenue,
  COUNT(DISTINCT "Order ID") AS total_orders
FROM sales
GROUP BY sales_month
ORDER BY sales_month;


