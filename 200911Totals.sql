-- total_invoices_year.sql: How many Invoices were there in 2009 and 2011?
select Count(*) InvoiceTotal
from Invoice i
where i.InvoiceDate = '2009'
or i.InvoiceDate = '2011';