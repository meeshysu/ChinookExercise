--in clause with subquery
select *
from Invoice i
where i.CustomerId in (select CustomerId /*<--- can only have one column in select*/ from Customer where Firstname like 'c%')
--c% is get this character and those like it

--just a regular join
select *
from Invoice i
join Customer c on c.CustomerId = i.CustomerId
where c.FirstName like 'c%'; 

--correlated subquery
select * 
from Invoice i 
where i.CustomerId in (
					select CustomerId 
					from Customer c 
					where Firstname like 'a%'
						and i.CustomerId = c.CustomerId --these two queries are related by relationship
					)

--joined subquery
select * 
from Invoice i 
join (
					select CustomerId 
					from Customer c 
					where Firstname like 'a%'
					) c
						on i.CustomerId = c.CustomerId --this way is just like the one above, justusing the join method instead
					


