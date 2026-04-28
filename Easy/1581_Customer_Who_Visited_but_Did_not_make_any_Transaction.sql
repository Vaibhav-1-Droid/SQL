--Leetcode 1581: Customer who did not make any transaction
--Goal: Find the IDs of users who visited the site but did not make any transactions, and count how many times each user made such visits
--Approach: Left join Visits & Transaction on visit_id
           --Filter rows where no transaction exists checking IS NULL
           --COUNT(visit_id) & group by remaining rows
/* Table: Visits
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+
Table: Transactions

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| transaction_id | int     |
| visit_id       | int     |
| amount         | int     |
+----------------+---------+*/

--If you use an aggregate function (COUNT, SUM, AVG, etc.), then every other selected column MUST be in GROUP BY.
--v.visit_id is NOT in the GROUP BY because it is already being used inside an aggregate function (COUNT) group by having order by.

SELECT v.customer_id,count(v.visit_id) AS count_no_trans from Visits v 
LEFT JOIN Transactions t 
ON v.visit_id = t.visit_id 
WHERE transaction_id IS NULL
GROUP BY v.customer_id;
