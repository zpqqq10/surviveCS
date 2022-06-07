use test_base; 
select * from test_base.employee; 

use test_base; 
create table authorization(
X varchar(10), 
Y varchar(10) default 'N',
Z varchar(10) default 'N', 
primary key (X)
);
select * from authorization; 
drop table authorization; 
drop database test_2; 


select *
from id_name; 

update id_name
set id = id+100 
where id = 1003; 

delimiter $$
create function ave(cname varchar(20))
returns integer
    begin
	declare res int; 
	select avg(salary) into res
	from works
	where company_name = cname; 
	return res; 
	end $$
delimiter ; 
    
