with matches as
	(select row_number() over(order by team_name) as ID, team_code, team_name
	from teams t)
select team.team_name as team, opponent.team_name as opponent
from matches team
join matches opponent on team.id < opponent.id;