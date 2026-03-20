-- =============================================
-- Lesson 8: A short note on NULLs
-- =============================================

-- NULL represents missing or unknown data in a database
-- Always pay attention to NULLs when joining tables or aggregating data

-- To filter NULL values use IS NULL or IS NOT NULL
-- (you cannot use = NULL or != NULL)

-- Syntax:
-- SELECT column, another_column
-- FROM mytable
-- WHERE column IS/IS NOT NULL
-- AND/OR another_condition;

-- Best practice: use default values instead of NULLs when possible
-- e.g. 0 for numerical data, empty string for text

-- -----------------------------------------------
-- Exercises (Tables: Buildings & Employees)
-- -----------------------------------------------

-- Ex 1: Find the name and role of all employees
-- who have not been assigned to a building
SELECT name, role
FROM employees
WHERE building IS NULL;

-- Ex 2: Find the names of buildings that hold no employees
SELECT DISTINCT building_name
FROM buildings
LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;