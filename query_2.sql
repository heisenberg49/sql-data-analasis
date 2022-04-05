select s.id,'new to source' as comment
from source s
left join target t on t.id = s.id
where s.id = 3
		union
select t.id,'new to target' as comment
from source s
right join target t on t.id = s.id
where t.id = 5
		union
select s.id, 'mismatch' as comment
from source s
join target t on t.id = s.id
	and s.name != t.name;