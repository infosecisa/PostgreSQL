select
starttime,
name
from cd.bookings 
inner join cd.facilities on (cd.facilities.facid = cd.bookings.facid)
where name ilike '%Tennis_Court%' and starttime between '2012-09-21 00:00:00' and '2012-09-21 23:59:00'
order by starttime