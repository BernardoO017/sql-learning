-- =============================================
-- Lesson 14: Updating rows
-- =============================================

-- UPDATE: modifies existing data in a table
-- Syntax:
-- UPDATE mytable
-- SET column = value_or_expr,
--     other_column = another_value_or_expr
-- WHERE condition;

-- ⚠️ IMPORTANT: always include WHERE clause!
-- Without it, the UPDATE applies to ALL rows in the table

-- Best practice: always test your condition with a SELECT first
-- to confirm you are targeting the right rows:
-- SELECT * FROM mytable WHERE condition;
-- then replace SELECT * with UPDATE SET ...

-- -----------------------------------------------
-- Exercises (Table: Movies)
-- -----------------------------------------------

-- Ex 1: The director for A Bug's Life is incorrect, it was directed by John Lasseter
UPDATE movies
SET director = "John Lasseter"
WHERE title = "A Bug's Life";

-- Ex 2: The year Toy Story 2 was released is incorrect, it was released in 1999
UPDATE movies
SET year = 1999
WHERE title = "Toy Story 2";

-- Ex 3: Both the title and director for Toy Story 8 are incorrect
-- Title should be "Toy Story 3" and directed by Lee Unkrich
UPDATE movies
SET title = "Toy Story 3",
    director = "Lee Unkrich"
WHERE title = "Toy Story 8"