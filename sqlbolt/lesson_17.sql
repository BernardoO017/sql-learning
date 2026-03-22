-- =============================================
-- Lesson 17: Altering tables
-- =============================================

-- ALTER TABLE: updates existing table schema
-- (add, remove, or modify columns and constraints)

-- Adding a column:
-- ALTER TABLE mytable
-- ADD column DataType OptionalTableConstraint
--     DEFAULT default_value;

-- Removing a column:
-- ALTER TABLE mytable
-- DROP column_to_be_deleted;
-- ⚠️ Not supported in SQLite!

-- Renaming the table:
-- ALTER TABLE mytable
-- RENAME TO new_table_name;

-- Note: each database (MySQL, Postgres, SQLite, SQL Server)
-- has slightly different syntax — always check the docs!

-- -----------------------------------------------
-- Exercises (Table: Movies)
-- -----------------------------------------------

-- Ex 1: Add a column Aspect_ratio with FLOAT data type
-- to store the aspect-ratio each movie was released in
ALTER TABLE movies
ADD Aspect_ratio FLOAT;

-- Ex 2: Add a column Language with TEXT data type
-- to store the language the movie was released in
-- Default value should be English
ALTER TABLE movies
ADD Language TEXT
    DEFAULT "English";