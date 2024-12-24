-- exercise 1
SELECT name
  FROM world
 WHERE population > (SELECT population
                       FROM world
                      WHERE name = 'Russia');

-- exercise 2
SELECT name
  FROM world
 WHERE continent = 'Europe'
   AND gdp/population > (SELECT gdp/population
                           FROM world
                          WHERE name = 'United Kingdom');

-- exercise 3
SELECT name, continent
  FROM world
 WHERE continent IN ( SELECT continent
                        FROM world
                       WHERE name IN ('Argentina', 'Australia'))
 ORDER BY name ASC;

-- exercise 4
SELECT name, population
  FROM world
 WHERE population >
       (SELECT population FROM world WHERE name = 'United Kingdom')
   AND population <
       (SELECT population FROM world WHERE name = 'Germany');


-- exercise 5
SELECT name,
       concat(
         round(
           (population /
           (SELECT population FROM world WHERE name = 'Germany')) * 100), '%') AS percentage
  FROM world
 WHERE continent = 'Europe' ;


-- exercise 6
SELECT name
  FROM world
 WHERE gdp > ALL
       (SELECT gdp
          FROM world
         WHERE continent = 'Europe'
           AND gdp > 0);


-- exercise 7
SELECT continent, name, area
  FROM world x
 WHERE area >= ALL
       (SELECT area FROM world y
         WHERE y.continent = x.continent
           AND area > 0);

-- exercise 8
SELECT continent, MIN(name)
  FROM world
 GROUP BY continent;

-- exercise 9


-- exercise 10
SELECT name, continent
  FROM world x
 WHERE population > ALL
       (SELECT y.population * 3
          FROM world y
         WHERE x.continent = y.continent
           AND x.name != y.name);
