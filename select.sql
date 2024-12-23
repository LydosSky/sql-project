-- question 6
SELECT name
FROM world
WHERE name LIKE '%United%';


-- question 7
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000;

-- question 8
SELECT name, population, area
FROM world
WHERE area > 3000000 XOR population > 250000000;

-- question 9
SELECT name, ROUND(population/1000000, 2) as population, ROUND(gdp/1000000000, 2) as gdp
  FROM world
 WHERE continent = 'South America';


-- question 10
SELECT name, ROUND((gdp/population)/ 1000) * 1000 AS gdp
  FROM world
 WHERE gdp >= 1000000000000;

-- question 11
SELECT name, capital
  FROM world
 WHERE LENGTH(name) = LENGTH(capital);

-- question 12
SELECT name, capital
  FROM world
 WHERE LEFT(name, 1) = LEFT(capital, 1) AND name <> capital;

-- question 13
SELECT name
  FROM world
 WHERE name NOT LIKE '% %'
   AND name NOT LIKE '%-%'
   AND name LIKE '%a%'
   AND name LIKE '%e%'
   AND name LIKE '%i%'
   AND name LIKE '%o%'
   AND name LIKE '%u%';


