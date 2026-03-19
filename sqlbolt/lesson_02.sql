-- =============================================
-- Lesson 2: Queries with constraints (Pt. 1)
-- =============================================

-- WHERE clause: used to filter rows based on conditions
-- Syntax: SELECT column FROM table WHERE condition

-- Useful operators:
-- =, !=, <, >, <=, >=        standard numerical operators
-- BETWEEN x AND y            value is within range (inclusive)
-- NOT BETWEEN x AND y        value is outside range
-- IN (x, y, z)               value exists in a list
-- NOT IN (x, y, z)           value does not exist in a list

-- -----------------------------------------------
-- Exercises
-- -----------------------------------------------

-- Ex 1: Find the movie with row id 6
SELECT * FROM movies
WHERE id = 6;

-- Ex 2: Find movies released between 2000 and 2010
SELECT * FROM movies
WHERE year BETWEEN 2000 AND 2010;

-- Ex 3: Find movies NOT released between 2000 and 2010
SELECT * FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

-- Ex 4: Find the first 5 movies and their release year
SELECT title, year FROM movies
WHERE id BETWEEN 1 AND 5;