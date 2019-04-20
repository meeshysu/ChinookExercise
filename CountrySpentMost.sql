--top_country.sql: Which country's customers spent the most?
select top 1 i.BillingCountry, sum(i.Total) as "Customers Spent Most"
from Invoice i
group by i.BillingCountry, i.Total
order by "Customers Spent Most" desc;