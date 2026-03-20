-- =============================================
-- Lesson 6: Multi-table queries with JOINs
-- =============================================

-- Database normalization: breaking data into multiple tables
-- to reduce redundancy and improve performance

-- INNER JOIN: combines rows from two tables where the key matches
-- Syntax:
-- SELECT column, another_table_column
-- FROM mytable
-- INNER JOIN another_table
--     ON mytable.id = another_table.id
-- WHERE condition
-- ORDER BY column ASC/DESC
-- LIMIT num OFFSET num;

-- INNER JOIN only returns rows that have matching keys in BOTH tables
-- Non-matching rows are ignored

-- Tables: Movies + BoxOffice
-- Movies.id = BoxOffice.movie_id

-- -----------------------------------------------
-- Exercises
-- -----------------------------------------------

-- Ex 1: Find the domestic and international sales for each movie
SELECT title, domestic_sales, international_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- Ex 2: Show sales for movies that did better internationally than domestically
SELECT title, domestic_sales, international_sales
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

-- Ex 3: List all movies by their ratings in descending order
SELECT title, rating
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;