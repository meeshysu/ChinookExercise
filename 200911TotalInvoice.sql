--total_sales_year.sql: What are the respective total sales for each of those years?
select i.Total 
from Invoice i 
where i.InvoiceDate = '2009'
or i.InvoiceDate = '2011'
and i.InvoiceDate = i.Total; 