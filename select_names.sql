-- exercise 1
SELECT name
  FROM world
 WHERE name LIKE 'Y%';

-- exercise 2
SELECT name
  FROM world
 WHERE name LIKE '%Y';

-- exercise 3
SELECT name
  FROM world
 WHERE name LIKE '%x%';

-- exercise 4
SELECT name
  FROM world
 WHERE name LIKE '%land';

-- exercise 5
SELECT name
  FROM world
 WHERE name LIKE 'C%'
       AND name LIKE '%ia';

-- exercise 6
SELECT name
  FROM world
 WHERE name LIKE '%oo%';

-- exercise 7
SELECT name
  FROM world
 WHERE name LIKE '%a%a%a%';

-- exercise 8
SELECT name
  FROM world
 WHERE name LIKE '_t%';

-- exercise 9
SELECT name
  FROM world
 WHERE name LIKE '%o__o%';

-- exercise 10
SELECT name
  FROM world
 WHERE name LIKE '____';

-- exercise 11
SELECT name
  FROM world
 WHERE name = capital;

-- exercise 12
SELECT name
  FROM world
 WHERE capital LIKE concat(name, ' city');


-- exercise 13
SELECT capital, name
  FROM world
 WHERE capital LIKE concat('%', name, "%");

-- exercise 14
SELECT capital, name
  FROM world
 WHERE capital LIKE concat(name,'_%');

-- exercise 15
SELECT name, replace(capital, name, '') AS extension
  FROM world
 WHERE capital LIKE concat(name, '_%');
