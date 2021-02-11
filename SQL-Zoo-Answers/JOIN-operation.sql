-- JOIN operation Tutotial

-- 1. Show the matchid and player name for all goals scored by Germany:

SELECT matchid, player
FROM goal 
WHERE teamid = 'GER'


-- 2. Show id, stadium, team1, team2 for just game 1012:

SELECT id,stadium,team1,team2
FROM game
WHERE id = 1012


-- 3. Modify it to show the player, teamid, stadium and mdate for every German goal:

SELECT player, teamid, stadium, mdate
FROM game
JOIN goal ON (id=matchid)
WHERE teamid = 'GER'


-- 4. Show the team1, team2 and player for every goal scored by a player called Mario:

SELECT team1, team2, player
FROM goal
JOIN game  ON (matchid = id)
WHERE player LIKE 'Mario%'


-- 5. Show player, teamid, coach, gtime for all goals scored in the first 10 minutes:

SELECT player, teamid, coach, gtime
FROM goal
JOIN eteam ON (teamid = id)
WHERE gtime<=10


-- 6. List the dates of the matches and the name of the team in which 'Fernando Santos' was the team1 coach:

SELECT mdate, teamname
FROM eteam
JOIN game ON (eteam.id = team1)
WHERE coach =  'Fernando Santos'


-- 7. List the player for every goal scored in a game where the stadium was 'National Stadium, Warsaw':

SELECT player
FROM goal
JOIN game ON (matchid = id)
WHERE stadium = 'National Stadium, Warsaw'


-- 8. Show the name of all players who scored a goal against Germany:

SELECT DISTINCT player
FROM game
JOIN goal ON (matchid = id) 
WHERE (team2 = 'GER' OR team1 = 'GER') AND teamid !='GER'


-- 9. Show teamname and the total number of goals scored:

SELECT teamname, COUNT(teamid)
FROM eteam
JOIN goal ON id=teamid
GROUP BY teamname


-- 10. Show the stadium and the number of goals scored in each stadium:

SELECT stadium, COUNT(matchid)
FROM goal
JOIN game ON (matchid = id)
GROUP BY stadium

