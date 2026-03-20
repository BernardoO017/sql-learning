-- =============================================
-- Lesson 9: Queries with expressions
-- =============================================

-- Expressions allow you to write more complex logic on column values
-- Can use mathematical and string functions in queries

-- Use AS keyword to give expressions a descriptive alias
-- Syntax:
-- SELECT col_expression AS expr_description
-- FROM mytable;

-- Aliases can also be used on tables:
-- SELECT column AS better_column_name
-- FROM a_long_table_name AS mywidgets
-- INNER JOIN widget_sales
--     ON mywidgets.id = widget_sales.widget_id;

-- -----------------------------------------------
-- Exercises (Tables: Movies & BoxOffice)
-- -----------------------------------------------

-- Ex 1: List all movies and their combined sales in millions of dollars
SELECT title, (domestic_sales + international_sales) / 1000000 AS combined_sales_millions
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- Ex 2: List all movies and their ratings in percent
SELECT title, rating * 10 AS rating_percent
FROM movies
INNER JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

-- Ex 3: List all movies released on even number years
SELECT title, year
FROM movies
WHERE year % 2 = 0;