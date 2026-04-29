-- LeetCode 197: Rising Temperature
-- Goal: find all dates' id with higher temperatures compared to its previous dates (yesterday).
-- Approach: Self join → compare rows within the same table
-- DATEDIFF = 1 → today vs yesterday

/*Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+ */
SELECT 
    w1.id
FROM 
    Weather w1
JOIN 
    Weather w2
ON 
    DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE 
    w1.temperature > w2.temperature;
