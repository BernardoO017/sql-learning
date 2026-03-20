-- =============================================
-- Lesson 7: OUTER JOINS
-- =============================================

-- When INNER JOIN only returns rows with matches in BOTH tables,
-- OUTER JOINs allow us to keep rows that have no match in the other table

-- LEFT JOIN  → keeps all rows from table A, even if no match in B
-- RIGHT JOIN → keeps all rows from table B, even if no match in A
-- FULL JOIN  → keeps all rows from both tables regardless of match

-- Note: SQLBolt only supports LEFT JOIN in the browser exercises

-- Syntax:
-- SELECT column, another_column
-- FROM mytable
-- LEFT/RIGHT/FULL JOIN another_table
--     ON mytable_id = another_table_matching_id
-- WHERE condition(s)
-- ORDER BY column ASC/DESC
-- LIMIT num_limit OFFSET num_offset;

-- -----------------------------------------------
-- Exercises (Tables: Buildings & Employees)
-- -----------------------------------------------

-- Ex 1: Find all buildings that have employees
SELECT DISTINCT building_name, role
FROM buildings
LEFT JOIN employees
    ON building_name = building;

-- Ex 2: Find all buildings and their capacity
SELECT DISTINCT building_name, capacity
FROM buildings
LEFT JOIN employees
    ON building_name = building;

-- Ex 3: List all buildings and the distinct employee
-- roles in each building (including empty buildings)
SELECT DISTINCT building_name, role
FROM buildings
LEFT JOIN employees
    ON building_name = building;