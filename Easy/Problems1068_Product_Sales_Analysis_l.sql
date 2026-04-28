-- LeetCode 1068: Product Sales Analysis I
-- Goal: Return product_name, year, and price for each sale
-- Approach: INNER JOIN Product and Sales using product_id
/*Table: Sales
+-------------+-------+
| Column Name | Type  |
+-------------+-------+
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |
+-------------+-------+
Table: Product
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
+--------------+---------+
Output: 
+--------------+-------+-------+
| product_name | year  | price |
+--------------+-------+-------+
| Nokia        | 2008  | 5000  |
| Nokia        | 2009  | 5000  |
| Apple        | 2011  | 9000  |
+--------------+-------+-------+ */
SELECT p.product_name,s.year, s.price from sales s 
join product p 
on p.product_id = s.product_id;
