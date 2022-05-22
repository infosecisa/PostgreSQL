select
starttime
from cd.bookings
inner join cd.members on (cd.members.memid = cd.bookings.memid)
where firstname ilike '%David%' and surname ilike '%Farrell%'