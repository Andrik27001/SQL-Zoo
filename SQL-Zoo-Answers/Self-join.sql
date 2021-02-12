-- Self join Tutorial

-- 1. How many stops are in the database:

Select COUNT(name)
FROM stops


-- 2. Find the id value for the stop 'Craiglockhart':

SELECT id
FROM stops
WHERE name = 'Craiglockhart'