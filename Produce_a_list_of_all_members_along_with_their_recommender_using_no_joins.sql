select distinct 
firstname || ' ' || surname as member,
(select recs.firstname || ' ' || recs.surname as recommender 
		from cd.members recs 
		where recs.memid = mems.recommendedby
	)
from cd.members mems
order by member