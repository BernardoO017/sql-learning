-- =============================================
-- Topic: Unions, Intersections & Exceptions
-- =============================================

-- Set operators combine results of two or more SELECT queries
-- Both queries must have the same column count, order and data types

-- Syntax:
-- SELECT column, another_column FROM mytable
-- UNION / UNION ALL / INTERSECT / EXCEPT
-- SELECT other_column, yet_another_column FROM another_table
-- ORDER BY column DESC
-- LIMIT n;

-- Note: UNION happens before ORDER BY and LIMIT
-- (as per the order of execution from Lesson 12)

-- -----------------------------------------------
-- Operators:
-- -----------------------------------------------

-- UNION        → combines results of both queries, removes duplicates
-- UNION ALL    → combines results of both queries, keeps duplicates (faster)
-- INTERSECT    → returns only rows that appear in BOTH result sets
-- EXCEPT       → returns rows in the FIRST query that are NOT in the second
--                ⚠️ order-sensitive! (like LEFT JOIN vs RIGHT JOIN)

-- INTERSECT and EXCEPT also discard duplicate rows by default
-- Some databases support INTERSECT ALL and EXCEPT ALL to keep duplicates

-- -----------------------------------------------
-- When to use UNION vs JOIN:
-- -----------------------------------------------
-- JOIN    → combines columns from different tables (horizontal)
-- UNION   → combines rows from different queries (vertical)
-- Use UNION when data can't be joined but needs to be combined