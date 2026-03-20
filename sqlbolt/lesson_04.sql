-- =============================================
-- Lesson 4: Filtering and sorting Query results
-- =============================================

-- DISTINCT: removes duplicate rows from results
-- SELECT DISTINCT column FROM table;

-- ORDER BY: sorts results by a column
-- ASC = ascending (default), DESC = descending
-- SELECT column FROM table ORDER BY column ASC/DESC;

-- LIMIT: limits the number of rows returned
-- OFFSET: where to start counting rows from
-- SELECT column FROM table ORDER BY column ASC/DESC LIMIT num OFFSET num;

-- -----------------------------------------------
-- Exercises
-- -----------------------------------------------

-- Ex 1: List all directors of Pixar movies alphabetically, without duplicates
SELECT DISTINCT director FROM movies
ORDER BY director ASC;

-- Ex 2: List the last 4 Pixar movies released (most recent to least)
SELECT title, year FROM movies
ORDER BY year DESC
LIMIT 4;

-- Ex 3: List the first 5 Pixar movies sorted alphabetically
SELECT title FROM movies
ORDER BY title ASC
LIMIT 5;

-- Ex 4: List the next 5 Pixar movies sorted alphabetically
SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;