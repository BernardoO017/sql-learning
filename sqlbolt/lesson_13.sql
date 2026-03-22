-- =============================================
-- Lesson 13: Inserting rows
-- =============================================

-- Schema: describes the structure of a table
-- (column names, data types, constraints)

-- INSERT: adds new rows to a table

-- Syntax (insert all columns - order matters):
-- INSERT INTO mytable
-- VALUES (value_or_expr, another_value_or_expr, ...);

-- Syntax (insert specific columns - safer):
-- INSERT INTO mytable
-- (column, another_column, ...)
-- VALUES (value_or_expr, another_value_or_expr, ...);

-- Can insert multiple rows at once:
-- INSERT INTO mytable
-- (column, another_column, ...)
-- VALUES (value_1, value_2, ...),
--        (value_3, value_4, ...),
--        ...;

-- Can use expressions in VALUES:
-- e.g. INSERT INTO boxoffice (movie_id, rating, sales_in_millions)
--      VALUES (1, 9.9, 283761.0 / 1000000);

-- -----------------------------------------------
-- Exercises (Table: Movies & BoxOffice)
-- -----------------------------------------------

-- Ex 1: Add the new production studio's new movie to the Movies table
INSERT INTO movies 
(Title, Director)
VALUES ("Toy Story 4", "John Lasseter");

-- Ex 2: Add the record to the BoxOffice table
INSERT INTO boxoffice
(movie_id, rating, domestic_sales, international_sales)
VALUES (15, 8.7, 340000000, 270000000);