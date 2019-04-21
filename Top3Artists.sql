--top_3_artists.sql: Provide a query that shows the top 3 best selling artists.
select top 3 a.[Name], count(*) as "Top 3 Artists"
from Artist a
join Album al
on a.ArtistId = al.ArtistId
join Track t
on t.AlbumId = al.AlbumId
join InvoiceLine il
on il.TrackId = t.trackId
group by a.[Name]
order by "Top 3 Artists" desc;