-- sales_agent_customer_count.sql: Provide a query that shows the count of customers assigned to each sales agent.
select e.FirstName, e.LastName, count(*) as "Number of Customers"
from Employee e, Customer c
where c.SupportRepId = e.EmployeeId
group by e.FirstName, e.Lastname;
