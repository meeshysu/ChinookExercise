--temporary tables::

#myCoolTable --local
--like variables have to have an @ sign in front of them, the # sign is specific to you as a user, but to the connection you are currently on (that file as you execute things)
--if i create this table, but close the file, the table is gone bc the connection is gone. only available in the scope of the connection. 
##myCoolerTable --global
--basically the same as above, it's temporary and won't show up in the table list, 
--but it's a gloabl temporary table. any user can access this table. any connection can access this table. 
--it doesn't go away automatically. you need to clean up after yourself. 

create table #myCoolTable (FullName varchar(255), CoolnessRating int) --columns you want to create
select * from #myCoolTable
drop table #myCoolTable --have to do this


select c.*, i.Total
into #tempdata
from Invoice i
join Customer c on c.CustomerId = i.CustomerId
where c.FirstName like 'a%'; 
--if i know i am going to have to execute this multiple times, or know i'll need the information later 
--just add an into clause to add it to a temporary table; however, you cannot have two columns called the same thing. 