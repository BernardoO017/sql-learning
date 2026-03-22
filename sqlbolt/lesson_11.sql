-- =============================================
-- Lesson 11: Queries with aggregates (Pt. 2)
-- =============================================

-- HAVING clause: filters grouped rows after GROUP BY
-- WHERE filters rows BEFORE grouping
-- HAVING filters rows AFTER grouping

-- Syntax:
-- SELECT group_by_column, AGG_FUNC(column) AS aggregate_result_alias
-- FROM mytable
-- WHERE condition
-- GROUP BY column
-- HAVING group_condition;

-- Tip: if you are not using GROUP BY, a simple WHERE clause will suffice

-- -----------------------------------------------
-- Exercises (Table: Employees)
-- -----------------------------------------------

-- Ex 1: Find the number of Artists in the studio (without HAVING)
SELECT role, COUNT(*) AS number_of_artists
FROM employees
WHERE role = "Artist";

-- Ex 2: Find the number of employees of each role in the studio
SELECT role, COUNT(*) AS number_of_employees
FROM employees
GROUP BY role;

-- Ex 3: Find the total number of years employed by all Engineers
SELECT role, SUM(years_employed) AS total_years
FROM employees
GROUP BY role
HAVING role = "Engineer";