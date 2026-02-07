/*
===========================================================
Repository   : SQL-PROBLEMS
Category     : Intermediate / CTE
Concept      : Non-Recursive CTE

Objective:
Create a temporary dataset and perform aggregation
without referencing any physical table.
===========================================================
*/

WITH sales_data AS (
    -- Creating an in-memory dataset
    SELECT 'Electronics' AS category, 2000 AS amount
    UNION ALL
    SELECT 'Electronics', 3500
    UNION ALL
    SELECT 'Clothing', 1500
    UNION ALL
    SELECT 'Clothing', 1800
    UNION ALL
    SELECT 'Furniture', 6000
)
SELECT 
    category,
    SUM(amount) AS total_sales
FROM sales_data
GROUP BY category
HAVING SUM(amount) > 5000;

/*Expected Outcome

category	total_sales
Electronics	5500
Furniture	6000

*/