SELECT matchid, player FROM Goal WHERE teamid = 'GER';
SELECT id, stadium, team1, team2 FROM Game WHERE id = 1012;
SELECT player, teamid, stadium, mdate FROM Game JOIN Goal ON (id=idmatch) WHERE teamid = 'GER';
SELECT team1, team2, player FROM Game JOIN Goal ON (id=idmatch) WHERE player LIKE 'Mario%';
SELECT * FROM Goal JOIN Eteam ON (teamid=id);
SELECT player, teamid, coach, gtime FROM Goal JOIN Eteam ON (teamid=id) WHERE gtime <= 10;
SELECT mdate, team1 FROM Game JOIN Eteam ON (team1=Eteam.id) WHERE coach = 'Fernando Santos';
SELECT player FROM Game JOIN Goal ON (id=idmatch) WHERE stadium = 'National Stadium, Warsaw';
SELECT COUNT(teamid) FROM Goal GROUP BY teamid;
SELECT stadium, COUNT(stadium) FROM Game JOIN Goal ON (id=idmatch) GROUP BY stadium;
SELECT matchid, mdate, COUNT(gtime) FROM Game JOIN Goal ON (id=idmatch) WHERE teamid = 'FRA' GROUP BY teamid;
