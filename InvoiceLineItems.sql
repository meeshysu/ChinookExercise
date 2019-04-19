
-- line_items_per_invoice.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. 
-- HINT: GROUP BY
select i.InvoiceId, count(*) InvoiceLineItems
from InvoiceLine i
group by i.InvoiceId;

