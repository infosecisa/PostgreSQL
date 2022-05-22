select 
	mems.firstname as memfname,
	mems.surname as memsname,
	recs.firstname as recfname,
	recs.surname as recsname
from 
	cd.members mems
	left join cd.members recs on recs.memid = mems.recommendedby
order by memsname, memfname; 