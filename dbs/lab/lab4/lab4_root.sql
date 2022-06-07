select *
from mysql.user; 

show grants for 'zpqqq'@'localhost'; 

create user 'white'@'localhost' identified by '123456'; 
drop user 'white'@'localhost'; 
show grants for 'white'@'localhost'; 
grant select on test_base.employee to 'white'@'localhost'; 
revoke select on test_base.employee from 'white'@'localhost'; 
grant create, drop on test_base.* to 'white'@'localhost'; 
grant drop on test_base.authorization to 'white'@'localhost'; 
revoke drop on test_base.authorization from 'white'@'localhost'; 
grant drop on test_case_2.* to 'white'@'localhost'; 
create table test_case_2.testone(
id char(5), 
primary key(id)); 

create view test_base.id_name as
select id, namee
from test_base.employee; 
drop view test_base.id_name; 