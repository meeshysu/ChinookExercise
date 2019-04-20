--top_agent.sql: Which sales agent made the most in sales over all?
select e.FirstName, sum(i.Total) as "Total Sales"
from Employee e, Invoice i, Customer c
where e.EmployeeId = c.SupportRepId
and c.CustomerId = i.CustomerId
group by e.FirstName;