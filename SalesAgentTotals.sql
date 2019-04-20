-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.
select e.FirstName as "Sales Support", sum(i.Total) as "Invoice Totals"
from Employee e, Invoice i, Customer c
where c.SupportRepId = e.EmployeeId
and c.CustomerId = i.CustomerId
group by e.FirstName;