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
