-- =============================================
-- Lesson 15: Deleting rows
-- =============================================

-- DELETE: removes rows from a table
-- Syntax:
-- DELETE FROM mytable
-- WHERE condition;

-- ⚠️ IMPORTANT: always include WHERE clause!
-- Without it, ALL rows are deleted from the table

-- Best practice: same as UPDATE — test with SELECT first
-- SELECT * FROM mytable WHERE condition;
-- confirm the right rows appear, then run DELETE

-- Always read DELETE statements twice and execute once!
-- Without a backup, deleted data is gone forever

-- -----------------------------------------------
-- Exercises (Table: Movies)
-- -----------------------------------------------

-- Ex 1: Remove all movies released before 2005
DELETE FROM movies
WHERE year < 2005;

-- Ex 2: Remove all movies directed by Andrew Stanton
DELETE FROM movies
WHERE director = "Andrew Stanton";