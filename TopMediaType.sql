--top_media_type.sql: Provide a query that shows the most purchased Media Type.
select top 1 m.[Name], count(il.TrackId)
from MediaType m, Track t, InvoiceLine il
where m.MediaTypeId = t.MediaTypeId
and t.TrackId = il.TrackId
group by m.[Name]
order by count(il.TrackId) desc;