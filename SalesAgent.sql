-- sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.
select c.FirstName, c.LastName, e.EmployeeId, e.Title
from Employee e, Customer c
where e.Title = 'Sales Support Agent';
