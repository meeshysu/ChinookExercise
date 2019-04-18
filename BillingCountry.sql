-- unique_invoice_countries.sql: Provide a query showing a unique/distinct list of billing countries from the Invoice table.
select i.BillingCountry, i.BillingPostalCode
from Invoice i
group by i.BillingCountry, i.BillingPostalCode;