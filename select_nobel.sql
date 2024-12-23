-- exercise 1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

-- exercise 2
SELECT winner
  FROM nobel
 WHERE yr = 1962 AND subject = 'literature';

-- exercise 3
SELECT yr, subject
  FROM nobel
 WHERE winner = 'Albert Einstein';

-- exercise 4
SELECT winner
  FROM nobel
 WHERE subject = 'peace' AND yr >= 2000;

-- exercise 5
SELECT yr, subject, winner
  FROM nobel
 WHERE subject = 'literature' AND  yr BETWEEN 1980 AND 1989;


-- exercise 6
SELECT *
  FROM nobel
 WHERE winner IN ('Theodore Roosevelt', 'Thomas Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

-- exercise 7
SELECT winner
  FROM nobel
 WHERE winner LIKE "John%";

-- exercise 8
SELECT *
  FROM nobel
 WHERE subject = 'physics' AND yr = 1980 OR subject = 'chemistry' AND yr = 1984;

-- exercise 9
SELECT *
  FROM nobel
 WHERE yr = 1980 AND NOT subject = 'chemistry' AND NOT subject = 'medicine';

-- exercise 10
SELECT *
  FROM nobel
 WHERE yr < 1910 AND subject = 'medicine' OR yr >= 2004 AND subject = 'literature';

-- exercise 11
SELECT *
  FROM nobel
 WHERE winner LIKE '%GRÜNBERG%';


-- exercise 12
SELECT *
  FROM nobel
 WHERE winner LIKE '%O''Neill%';

-- exercise 13
SELECT winner, yr, subject
  FROM nobel
 WHERE winner LIKE 'Sir%'
 ORDER BY yr DESC, winner ASC;

-- exercise 14
SELECT winner, subject
  FROM nobel
 WHERE yr = 1984
 ORDER BY
   CASE
   WHEN subject IN ('chemistry', 'physics') THEN 1
   ELSE 0
   END,
   subject;
