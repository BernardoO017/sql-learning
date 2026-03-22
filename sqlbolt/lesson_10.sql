-- =============================================
-- Lesson 10: Queries with aggregates (Pt. 1)
-- =============================================

-- Aggregate functions summarize information about groups of rows
-- Syntax:
-- SELECT AGG_FUNC(column_or_expression) AS aggregate_description
-- FROM mytable
-- WHERE constraint_expression;

-- Common aggregate functions:
-- COUNT(*)         → counts number of rows in the group
-- COUNT(column)    → counts non-NULL values in the column
-- MIN(column)      → finds smallest value in the column
-- MAX(column)      → finds largest value in the column
-- AVG(column)      → finds average value in the column
-- SUM(column)      → finds sum of all values in the column

-- GROUP BY: applies aggregate functions to individual groups of data
-- Syntax:
-- SELECT AGG_FUNC(column) AS aggregate_description
-- FROM mytable
-- WHERE constraint_expression
-- GROUP BY column;

-- -----------------------------------------------
-- Exercises (Table: Employees)
-- -----------------------------------------------

-- Ex 1: Find the longest time an employee has been at the studio
SELECT MAX(years_employed) AS longest_time
FROM employees;

-- Ex 2: For each role, find the average number of years
-- employed by employees in that role
SELECT role, AVG(years_employed) AS avg_years
FROM employees
GROUP BY role;

-- Ex 3: Find the total number of employee years worked in each building
SELECT building, SUM(years_employed) AS total_years
FROM employees
GROUP BY building;