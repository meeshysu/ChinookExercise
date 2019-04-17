-- non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
select c.FirstName, c.LastName, c.CustomerId, c.Country
from Customer c
where c.Country != 'USA';

-- brazil_customers.sql: Provide a query only showing the Customers from Brazil.
select c.FirstName, c.LastName, c.CustomerId, c.Country
from Customer c
where c.Country = 'Brazil';

-- brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
