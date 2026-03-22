-- =============================================
-- Lesson 16: Creating tables
-- =============================================

-- CREATE TABLE: creates a new table in the database
-- Syntax:
-- CREATE TABLE IF NOT EXISTS mytable (
--     column DataType TableConstraint DEFAULT default_value,
--     another_column DataType TableConstraint DEFAULT default_value,
-- );

-- IF NOT EXISTS: skips creation if table already exists (avoids error)

-- -----------------------------------------------
-- Common Data Types:
-- -----------------------------------------------
-- INTEGER, BOOLEAN    → whole numbers / true or false
-- FLOAT, DOUBLE, REAL → floating point / decimal numbers
-- CHARACTER(n)        → fixed length text (exactly n chars)
-- VARCHAR(n), TEXT    → variable length text (up to n chars)
-- DATE, DATETIME      → date and time values
-- BLOB                → binary data (images, files, etc.)

-- -----------------------------------------------
-- Common Table Constraints:
-- -----------------------------------------------
-- PRIMARY KEY    → values are unique, used to identify each row
-- AUTOINCREMENT  → integer value auto-filled and incremented
-- UNIQUE         → values must be unique (like PRIMARY KEY but not the identifier)
-- NOT NULL       → value cannot be NULL
-- CHECK (expr)   → values must satisfy the expression
-- FOREIGN KEY    → value must exist as PRIMARY KEY in another table

-- -----------------------------------------------
-- Exercises (Table: Database)
-- -----------------------------------------------

-- Ex 1: Create a new table called Database with the following columns:
-- Name (text), Version (float), Download_count (integer)
CREATE TABLE IF NOT EXISTS Database (
    Name TEXT,
    Version FLOAT,
    Download_count INTEGER
);