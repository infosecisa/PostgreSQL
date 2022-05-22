select 
distinct(firstname || ' ' || surname) as member,
name
from cd.members
inner join cd.bookings on (cd.bookings.memid = cd.members.memid)
inner join cd.facilities on (cd.facilities.facid = cd.bookings.facid)
where name ilike '%Tennis_Court%'
order by member,name