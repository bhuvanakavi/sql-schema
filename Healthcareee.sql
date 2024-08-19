create database healthcare;

use healthcare;
create table patient(pat_id int,pat_name varchar(50),pat_age int,
primary key(pat_id));

insert into patient(pat_id,pat_name,pat_age)
values(1,"Raghul",20),(2,"Ravi",27),(3,"Ram",10);


use healthcare;
create table doctor(id int,doc_id int,doc_name varchar(50),doc_age int,
primary key(id),foreign key(doc_id) references patient(pat_id));
insert into doctor(id,doc_id, doc_name,doc_age)
values(1,1,"Bhuvana",20),(2,2,"Deepa",20),(3,3,"kavi",21);


use healthcare;
create table nurse(id int,n_id int,n_name varchar(50),n_age int,
primary key(id),foreign key(n_id) references doctor(id));

insert into nurse(id,n_id,n_name,n_age) 
values(1,1,"Naruto",27),(2,2,"Hinata",27),(3,3,"Itachi",28);


use healthcare;
create table appointment(id int,p1_id int,p1_name varchar(50),p1_num int,
primary key(id),foreign key(p1_id) references patient(pat_id));

insert into appointment(id,p1_id,p1_name,p1_num) 
values(1,1,"person1",27),(2,2,"person2",27),(3,3,"person3",28);


use healthcare;
create table medical(id int,m_id int,m_name varchar(50),m_bill int,
primary key(id),foreign key(m_id) references nurse(id));

insert into medical(id,m_id,m_name,m_bill) 
values(1,1,"Adderall",150),(2,2,"Ativan",100),(3,3,"Amitriptyline",28);

select*from patient;
select*from doctor;
select*from nurse;
select*from appointment;
select*from medical;








