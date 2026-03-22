-- =============================================
-- Topic: Subqueries
-- =============================================

-- Subquery: a query nested inside another query
-- Can be used in SELECT, FROM, WHERE, and HAVING clauses
-- Must be fully enclosed in parentheses

-- -----------------------------------------------
-- General Subquery (in WHERE clause)
-- -----------------------------------------------
-- Used to compare values against the result of another query
-- Example: find employees earning less than average
-- SELECT * FROM sales_associates
-- WHERE salary > (SELECT AVG(revenue_generated) FROM sales_associates);

-- -----------------------------------------------
-- Subquery in FROM clause
-- -----------------------------------------------
-- Treat the subquery result as a temporary table
-- Example:
-- SELECT * FROM (SELECT ... FROM ...) AS subquery_alias
-- WHERE condition;

-- -----------------------------------------------
-- Correlated Subquery
-- -----------------------------------------------
-- The inner query references columns from the outer query
-- Runs once FOR EACH ROW of the outer query (can be slow!)
-- Example: find employees earning less than their department average
-- SELECT * FROM employees
-- WHERE salary >
--     (SELECT AVG(revenue_generated) FROM employees AS dept_employees
--      WHERE dept_employees.department = employees.department);

-- -----------------------------------------------
-- Existence Test (EXISTS / IN / NOT IN)
-- -----------------------------------------------
-- Test whether a value exists in a dynamic list
-- SELECT *, ...
-- FROM mytable
-- WHERE column IN/NOT IN
--     (SELECT another_column FROM another_table);

-- ⚠️ Performance note: correlated subqueries can be slow
-- and hard to read — use JOINs when possible
-- Subquery support and optimization varies across databases