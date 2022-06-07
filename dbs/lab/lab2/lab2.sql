show databases;
create database test_case_2; 
use test; 
show tables; 


delimiter $$
create procedure CreateTable()
begin
	create table dorm(
		build VARCHAR(50) not null, 
		room INT, 
		capa INT, 
		primary key(build, room)
	);
	create table stu(
		sid INT not null, 
		build VARCHAR(50) not null, 
		room INT, 
		PRIMARY KEY(sid), 
		foreign key(build, room) references dorm(build, room)
	);
end; 
$$
delimiter ;
call CreateTable(); 
drop procedure CreateTable; 




delimiter $$
create procedure DeleteTable()
begin
	drop table stu; 
    drop table stuu; 
    drop table dorm; 
end; 
$$
delimiter ;
call DeleteTable(); 
drop procedure DeleteTable; 




delimiter $$
create procedure Insertion()
begin
	insert into dorm VALUES('bifeng', 101, 4); 
	insert into dorm VALUES('bifeng', 102, 4); 
	insert into dorm VALUES('bifeng', 103, 4); 
    insert into dorm VALUES('ziyun', 101, 4); 
    insert into dorm VALUES('ziyun', 102, 4); 
	# insert into dorm VALUES('Bifeng', 101, 4); 
	insert into stu VALUES(1, 'bifeng', 101); 
	insert into stu VALUES(2, 'bifeng', 102); 
	insert into stu VALUES(3, 'bifeng', 101); 
    insert into stu VALUES(4, 'bifeng', 103); 
    insert into stu VALUES(5, 'bifeng', 102); 
end; 
$$
delimiter ;
call Insertion(); 


alter table stu add name varchar(10); 
update stu
	set name='xyz'
	where sid = 1; 
select * from stu; 
select * from dorm; 

create index student on stu(sid, name); 
drop index student on stu; 

select B.sid
from stu A, stu B
where A.room=B.room; 

select *
from stu
where room in(select room
from stu
group by room
having count(sid)>1); 


create view sid_101
as
	select sid
    from stu
    where room=101
; 
drop view sid_101; 



delete from stu where sid=4; 
insert into stu values(3, 'ziyun', 103, 'xxx'); 
insert into dorm values('ziyun', 103, 4); 
select * 
from stu as A
where 1<(select count(*) from stu B where A.build=B.build); 



# single
select distinct build, room 
	from dorm
	where not room <> 102; 




# multiple
select *
	from stu natural join dorm
    where room <> 103; 




# nested
select build, count(distinct room) as rooms
	from (select build, room
		  from stu natural join dorm
		  ) as tbl
    group by build; 




select count(distinct sid)
	from sid_101; 

update sid_101
	set sid = sid*8
	; 

select build, room, count(sid)
from stu
group by build, room; 
select *
from stuu natural join dorm; 
select *
from dorm
where room =101 
; 

select * 
from stuu join dorm using (build)
; 


(select build, room
from stuu)
union all
(select build, room
from dorm); 

select 1+1; 

set @test_var = 1; 
select @test_var; 
select build, room into @test_build, @test_room
from dorm limit 1; 
select @test_build; 

set @a=1; 
select @a; 
select var_; 
delimiter $$
create procedure p1()
begin
declare var_ varchar(10);
select var_, @a;  
end; 
$$
delimiter ;
drop procedure p1; 
call p1();


CREATE TABLE drivers (
  driver_name char(10) DEFAULT NULL,
  vehicle_id int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert into drivers values('yan', 1);
insert into drivers values('wei', 1);
insert into drivers values('li', 1);
insert into drivers values('wei', 2);
insert into drivers values('wei', 3);
select * from drivers;  
CREATE TABLE vehicles (
  `id` int(11) DEFAULT NULL
) ;
insert into vehicles values(1);
insert into vehicles values(2);
insert into vehicles values(3);
select * from vehicles;  

SELECT DISTINCT D1.driver_name
	FROM drivers AS D1
WHERE NOT EXISTS
			(SELECT * FROM vehicles AS V1
				WHERE NOT EXISTS
				(
					SELECT * FROM drivers AS D1
					WHERE D1.vehicle_id = V1.id
				)
			);
(SELECT * FROM vehicles AS V1
				WHERE EXISTS
				(
					SELECT * FROM drivers AS D1
					WHERE D1.vehicle_id = V1.id
				)
			);