--top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs
select top 5 t.Name, count(*) as "Top 5 Tracks"
from Track t
join InvoiceLine il
on il.TrackId = t.TrackId
join Invoice I
on i.InvoiceId = il.InvoiceId
group by t.TrackId, t.Name
order by count(*) desc;
