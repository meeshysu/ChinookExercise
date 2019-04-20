-- invoice_totals.sql: 
-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
select e.FirstName, e.LastName, i.InvoiceId, i.Total, c.FirstName, c.LastName, c.Country
from Customer c, Invoice i, Employee e
where c.CustomerId = i.InvoiceId
and e.Title = 'Sales Support Agent'
order by i.Total asc;