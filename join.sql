--1
SELECT matchid, player FROM goal
  WHERE teamid = 'GER'

--2
SELECT id,stadium,team1,team2
  FROM game
WHERE id = 1012


--3
SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (game.id=goal.matchid)
WHERE goal.teamid = 'GER'

--4
SELECT team1, team2, player
  FROM game JOIN goal ON (game.id=goal.matchid)
WHERE player LIKE 'Mario%'

--5
SELECT player, teamid, coach, gtime
  FROM goal JOIN eteam on goal.teamid=eteam.id
 WHERE gtime<=10

--6
SELECT mdate, teamname
FROM game JOIN eteam ON (game.team1 = eteam.id)
WHERE coach = 'Fernando Santos'

--7
SELECT player
FROM game JOIN goal ON (game.id = goal.matchid)
WHERE stadium = 'National Stadium, Warsaw'

--8
SELECT DISTINCT player
  FROM game JOIN goal ON matchid = id
    WHERE (team1='GER' OR team2='GER')
AND teamid != 'GER'

--9
SELECT teamname, COUNT(teamname)
  FROM eteam JOIN goal ON id=teamid
 GROUP BY teamname

--10
SELECT stadium , COUNT(stadium)
  FROM game JOIN goal ON game.id=goal.matchid
 GROUP BY stadium

--11
SELECT matchid, MAX(mdate), COUNT(matchid)
  FROM game JOIN goal ON matchid = id
 WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid

--12
SELECT matchid, MAX(mdate), count (matchid)
  FROM game JOIN goal ON matchid = id
 WHERE teamid = 'GER'
GROUP BY matchid
