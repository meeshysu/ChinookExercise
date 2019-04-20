-- line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.
select t.[Name], a.[Name], al.Title, i.InvoiceLineId
from Track t, Artist a, Album al, InvoiceLine i
where i.TrackId = t.TrackId
and a.ArtistId = al.ArtistId
and t.AlbumId = al.AlbumId
order by i.InvoiceLineId desc;--for fun

