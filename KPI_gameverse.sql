#1. Total Number of registered players available in the gameverse Platform.
#use players table
SELECT count(*) as reg_players from players;

#2.Total Revenue earned from player purchases.
#use purchase table
select sum(amount) as revenue from purchases;

#3.Count the distinct players who have played at least one game session
#use game session table
SELECT count(distinct(Playerid)) as uniplayer from gamesessions;

#4.Calculate the average duration of all recorded game session.
#use gamesession table
select avg(durationminutes) as avg_time from gamesessions;

#5.Calculate the total purchase amount for each player and return the player with highest spending
#apply inner join on players and purchases, group by on playername

SELECT p.playername,sum(pr.amount) as spend FROM PLAYERS P INNER JOIN PURCHASES PR ON P.PLAYERID=PR.PLAYERID 
group by p.playername
ORDER BY spend DESC limit 1;

#6.Calculate the total sessions played for each game and returns the most popular one.
# count on sessionid ,use inner join on games and gamesession , group by on gamename,
SELECT G.gamename,count(gs.sessionid) as total FROM games g INNER JOIN gamesessions gs ON g.gameid=gs.gameid 
group by g.gamename
ORDER BY total DESC limit 1;