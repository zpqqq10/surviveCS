use test_base; 

create table employee(
	id int, 
    namee varchar(10), 
    gender char(1), 
    age int, 
    grade int, 
    primary key(id), 
    check(gender in('M', 'F')), 
    check(age>14), 
    check(grade>0 and grade<8)
); 

create table baclub(
	id int, 
    position char(2), 
    foreign key(id) references employee(id), 
    check (position in ('PG', 'SG', 'SF', 'BF', 'C'))
); 

# insert to employee
insert into employee values(1000, 'xx', 'F', 20, 7); 
insert into employee values(1001, 'yy', 'F', 22, 3); 
insert into employee values(1002, 'zz', 'M', 22, 1); 
insert into employee values(1003, 'ii', 'M', 22, 4); 
insert into employee values(1004, 'jj', 'F', 22, 5);
insert into employee values(1005, 'kk', 'M', 20, 7);  
insert into employee values(1007, 'dd', 'M', 40, 5);  

select * from employee; 

# duplicate error 
insert into employee values(1001, 'mm', 'F', 21, 6);
# check error
insert into employee values(1008, 'uu', 'M', 10, 1); 

# insert to baclub
insert into baclub values(1001, 'PG'); 
insert into baclub values(1002, 'C'); 

select * from baclub; 

# delete from employee
delete from employee
where id = 1005; 

# update
update employee
set id = 1006
where id = 1001; 

# assertion (not supported)
create assertion age_con
check 
(not exists (select *
			from employee
            where age > 30)); 

delimiter $$
create trigger set_position
	after update on employee
	for each row
	begin
		update baclub
        set position = 'BF'
        where baclub.id in (select id 
							from employee
                            where age = 30); 
	end; $$
delimiter ;

update employee
set age = 30
where id = 1005;  
select * from employee; 
select * from baclub; 