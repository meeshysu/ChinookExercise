-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?
-- order by desc, get top first one 
select e.FirstName, sum(i.Total) as "Total Sales"
from Employee e, Invoice i, Customer c
where e.EmployeeId = c.SupportRepId
and c.CustomerId = i.CustomerId
group by e.FirstName;