
create table department (
id int generated by default as identity,
department_name varchar(30) not null unique,

primary key(id)
);

create table course (
id int generated by default as identity,
course_name varchar(30) not null unique,

primary key(id)
);

create table professor (
id int generated by default as identity,
department_id int not null,
professor_name varchar(30) not null,
cpf varchar(14) not null unique,

primary key(id),
foreign key(department_id) references department(id)
);

create table allocation (
id int generated by default as identity,
professor_id int not null,
course_id int not null,
days varchar(15) not null,
start_hour time not null,
end_hour time not null,

primary key(id),
foreign key(professor_id) references professor(id),
foreign key(course_id) references course(id)
);
alter table if exists department, course, professor, allocation;