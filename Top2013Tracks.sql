-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.
select t.Name, count(*) as "Most Sold Track"
from Track t
join InvoiceLine il
on il.TrackId = t.TrackId
join Invoice I
on i.InvoiceId = il.InvoiceId
where year(i.InvoiceDate) = 2013
group by t.TrackId, t.Name
order by count(*) desc;