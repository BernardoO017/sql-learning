-- =============================================
-- Lesson 12: Order of execution of a Query
-- =============================================

-- Complete SELECT query syntax:
-- SELECT DISTINCT column, AGG_FUNC(column_or_expression) AS alias
-- FROM mytable
--     JOIN another_table
--         ON mytable.column = another_table.column
-- WHERE constraint_expression
-- GROUP BY column
-- HAVING group_constraint
-- ORDER BY column ASC/DESC
-- LIMIT count OFFSET count;

-- Order of execution (how the database processes the query):
-- 1. FROM & JOIN   → determine the total working set of data
-- 2. WHERE         → filters rows before grouping
-- 3. GROUP BY      → groups remaining rows by common values
-- 4. HAVING        → filters grouped rows
-- 5. SELECT        → expressions and aliases are computed
-- 6. DISTINCT      → duplicate rows are discarded
-- 7. ORDER BY      → results are sorted
-- 8. LIMIT/OFFSET  → final rows are selected

-- Important: aliases defined in SELECT are NOT accessible
-- in WHERE or GROUP BY because SELECT runs after those clauses

-- -----------------------------------------------
-- Exercises (Tables: Movies & BoxOffice)
-- -----------------------------------------------

-- Ex 1: Find the number of movies each director has directed
SELECT director, COUNT(*) AS number_of_movies
FROM movies
GROUP BY director;

-- Ex 2: Find the total domestic and international sales
-- that can be attributed to each director
SELECT director, 
    SUM(domestic_sales + international_sales) AS total_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
GROUP BY director;