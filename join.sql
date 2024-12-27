-- exercise 1
SELECT matchid, player
  FROM goal
 WHERE teamid = "GER";

-- exercise 2
SELECT id, stadium, team1, team2
  FROM game
 WHERE id = 1012;

-- exercise 3
SELECT player, teamid , stadium, mdate
  FROM game JOIN goal ON (game.id=goal.matchid)
 WHERE teamid='GER';

-- exercise 4
SELECT team1, team2, player
  FROM game JOIN  goal ON (game.id=goal.matchid)
 WHERE player LIKE 'Mario%';

-- exercise 5
SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam ON teamid=id
 WHERE gtime <= 10;

-- exercise 6
SELECT mdate, teamname
  FROM game JOIN eteam ON (team1=eteam.id)
 WHERE coach='Fernando Santos';

-- exercise 7
SELECT player
  FROM game JOIN goal ON(id=matchid)
 WHERE stadium LIKE 'National Stadium%';

-- exercise 8
SELECT DISTINCT player
  FROM game JOIN goal ON matchid=id
 WHERE (team1='GER' OR team2='GER') AND NOT teamid='GER';

-- exercise 9
SELECT teamname, COUNT(teamid)
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname;

-- exercise 10
SELECT stadium, COUNT(stadium)
  FROM game JOIN goal ON id=matchid
 GROUP BY stadium;

-- exercise 11
SELECT matchid, mdate, COUNT(matchid)
  FROM game JOIN goal ON matchid = id
 WHERE team1='POL' OR team2='POL'
 GROUP BY matchid;

-- exercise 12
SELECT matchid, mdate, COUNT(matchid)
  FROM game JOIN goal ON matchid=id
 WHERE teamid='GER'
 GROUP BY matchid;

-- exercise 13 ??? 
SELECT mdate,
       team1,
       SUM(CASE WHEN goal.teamid=game.team1 THEN 1 ELSE 0 END) AS score1,
       team2,
       SUM(CASE WHEN goal.teamid=game.team2 THEN 1 ELSE 0 END) AS score2
  FROM game JOIN goal ON goal.matchid = game.id
 GROUP BY id, mdate, team1, team2
 ORDER BY mdate, matchid, team1, team2;

