-- =============================================
-- Lesson 18: Dropping tables
-- =============================================

-- DROP TABLE: removes an entire table including all data and schema
-- Different from DELETE which only removes rows but keeps the table

-- Syntax:
-- DROP TABLE IF EXISTS mytable;

-- IF EXISTS: prevents error if the table doesn't exist

-- ⚠️ If other tables depend on this table via FOREIGN KEY,
-- you must either:
-- 1. Remove the dependent rows first
-- 2. Drop the dependent tables first

-- -----------------------------------------------
-- Exercises
-- -----------------------------------------------

-- Ex 1: Drop the Movies table
DROP TABLE IF EXISTS movies;

-- Ex 2: Drop the BoxOffice table
DROP TABLE IF EXISTS boxoffice;