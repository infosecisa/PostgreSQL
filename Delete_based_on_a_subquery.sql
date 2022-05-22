delete from cd.members
where memid NOT IN (SELECT memid FROM cd.bookings)