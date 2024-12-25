-- exercise 1
SELECT SUM(population)
  FROM world;

-- exercise 2
SELECT DISTINCT continent FROM world;

-- exercise 3
SELECT SUM(gdp) FROM world WHERE continent = "Africa";

-- exercise 4
SELECT COUNT(name) FROM world WHERE area > 1000000;

-- exercise 5
SELECT SUM(population) FROM world WHERE name IN ('Estonia', 'Latvia', 'Lithuania');

-- exercise 6
SELECT continent, COUNT(name) FROM world GROUP BY continent;

-- exercise 7
SELECT continent, COUNT(name) FROM world WHERE population > 10000000 GROUP BY continent;

-- exercise 8
SELECT continent FROM world GROUP BY continent HAVING SUM(population) > 100000000;
