/*
===========================================================
Repository   : SQL-PROBLEMS
Category     : Advanced / CTE
Concept      : Recursive CTE
Difficulty   : Intermediate

Objective:
-----------
This problem demonstrates how to use a Recursive Common 
Table Expression (CTE) to simulate loop behavior in SQL.

Purpose:
--------
- Strengthen understanding of recursion in SQL
- Practice sequence generation using set-based logic
- Improve problem-solving skills for interview-style questions

Problem Summary:
----------------
Print pattern P(20), where each row contains decreasing
number of stars starting from 20 down to 1.

Key Learning Points:
--------------------
- Recursive CTE consists of:
    1) Anchor Query (starting condition)
    2) Recursive Query (self-referencing logic)
- Recursion stops automatically when the condition fails
- Useful when dealing with:
    • Hierarchical data
    • Unknown depth structures
    • Sequence generation
    • Loop simulation in SQL

Learning Approach:
------------------
This file is part of structured SQL practice covering
fundamentals to advanced concepts, focusing on clarity,
logic building, and real-world readiness.
===========================================================
*/

with recursive numbers AS(
    SELECT
    20 as pattern_size

    UNION ALL

    SELECT
    pattern_size-1 as pattern_size
    FROM
    numbers
    where pattern_size > 1
)
select 
repeat('*',pattern_size) as pattern
FROM
numbers;


/*Expected Outcome

* * * * * ... (20 times)
* * * * ...
...
*

*/