monthly_sales_results.csv
Contains the output of the SQL analysis, showing:

sales_month — The month of the sales in YYYY-MM format.

total_revenue — Total revenue generated in that month.

total_orders — Number of unique orders placed in that month.

monthly_sales_analysis.sql
SQL script that:

Groups sales data by month (strftime('%Y-%m', "Order Date")).

Sums up the Amount column for total monthly revenue.

Counts distinct Order ID values for total orders.

Sorts the results chronologically by month.

SELECT
  strftime('%Y-%m', "Order Date") AS sales_month,
  SUM(Amount) AS total_revenue,
  COUNT(DISTINCT "Order ID") AS total_orders
FROM sales
GROUP BY sales_month
ORDER BY sales_month;

🛠 Requirements

To run the SQL script, you’ll need:

SQLite or any database engine that supports strftime.

A sales dataset with:

Order Date (date of order)

Amount (numeric revenue value)

Order ID (unique order identifier)

🚀 How to Use

Prepare your database
Import your sales data into a table named sales.

Run the SQL Script

sqlite3 my_database.db < monthly_sales_analysis.sql



📊 Example Output
sales_month	total_revenue
