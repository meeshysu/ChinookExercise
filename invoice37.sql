-- invoice_37_line_item_count.sql: Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
select count(*) InvoiceId
from InvoiceLine i
where i.InvoiceId = '37';