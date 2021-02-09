-- 1. show the name, continent and population of all countries:
SELECT name, continent, population
FROM world

-- 2. Show the name for the countries that have a population of at least 200 million:
SELECT name
FROM world
WHERE population > 200000000

-- 3. Give the name and the per capita GDP for those countries with a population of at least 200 million:
SELECT name, gdp/population
FROM world
WHERE population > 200000000

-- 4. Show the name and population in millions for the countries of the continent 'South America':
SELECT name, population/1000000
FROM world
WHERE continent IN ('South America')

-- 5. Show the name and population for France, Germany, Italy:
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

-- 6. Show the countries which have a name that includes the word 'United':
SELECT name
FROM world
WHERE name LIKE 'United%'


-- 7. Show the countries that are big by area or big by population. Show name, population and area:
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

-- 8. Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area:
SELECT name, population, area
FROM world
WHERE area > 3000000 XOR population > 250000000 