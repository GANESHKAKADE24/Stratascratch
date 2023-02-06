/* Question

Find the number of apartments per nationality that are owned by people under 30 years old.
Output the nationality along with the number of apartments.
Sort records by the apartments count in descending order. */

Ans-
with tab as (
select *
from airbnb_hosts h
join airbnb_units u
on h.host_id=u.host_id
where age < 30 and unit_type='Apartment')

select
nationality,
count (distinct(unit_id))
from tab
group by 1;
