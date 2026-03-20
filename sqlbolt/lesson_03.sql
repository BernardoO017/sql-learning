-- =============================================
-- Lesson 3: Queries with constraints (Pt. 2)
-- =============================================

-- String operators for WHERE clauses:
-- =              case sensitive exact match
-- != or <>       case sensitive inequality
-- LIKE           case insensitive exact match
-- NOT LIKE       case insensitive inequality
-- %              wildcard: matches 0 or more characters
-- _              wildcard: matches a single character
-- IN (...)       string exists in a list
-- NOT IN (...)   string does not exist in a list

-- -----------------------------------------------
-- Exercises
-- -----------------------------------------------

-- Ex 1: Find all the Toy Story movies
SELECT * FROM movies
WHERE title LIKE 'Toy Story%';

-- Ex 2: Find all movies directed by John Lasseter
SELECT * FROM movies
WHERE director = 'John Lasseter';

-- Ex 3: Find all movies NOT directed by John Lasseter
SELECT * FROM movies
WHERE director != 'John Lasseter';

-- Ex 4: Find all WALL-* movies
SELECT * FROM movies
WHERE title LIKE 'WALL-%';