-- =============================================
-- Review 1: Simple SELECT Queries
-- =============================================

-- Table: North_american_cities
-- Practicing SELECT, WHERE, ORDER BY, LIMIT, OFFSET

-- Ex 1: List all Canadian cities and their populations
SELECT city, population FROM North_american_cities
WHERE country = 'Canada';

-- Ex 2: Order all cities in the United States by latitude (north to south)
SELECT city, latitude FROM North_american_cities
WHERE country = 'United States'
ORDER BY latitude DESC;

-- Ex 3: List all cities west of Chicago, ordered from west to east
SELECT city, longitude FROM North_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;

-- Ex 4: List the two largest cities in Mexico (by population)
SELECT city, population FROM North_american_cities
WHERE country = 'Mexico'
ORDER BY population DESC
LIMIT 2;

-- Ex 5: List the third and fourth largest cities in the US by population
SELECT city, population FROM North_american_cities
WHERE country = 'United States'
ORDER BY population DESC
LIMIT 2 OFFSET 2;