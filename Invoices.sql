-- sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
select e.Title, e.FirstName, e.LastName, e.EmployeeId, i.InvoiceId
from Employee e, Invoice i
where e.Title = 'Sales Support Agent';