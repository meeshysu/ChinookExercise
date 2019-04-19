--line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.
select i.InvoiceLineId, t.[Name]
from InvoiceLine i 
join Track t
on i.TrackId = t.TrackId
order by i.InvoiceLineId asc;
