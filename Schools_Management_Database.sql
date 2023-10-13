create schema if not exists school;

use school;

create table schools(
id int auto_increment primary key,
name varchar(255) not null,
creation_date date,
adress varchar(20),
phone varchar(20),
email varchar(255),
web varchar(255)
);

create table students(
id int auto_increment primary key,
school_id int,
name varchar(255) not null,
surname varchar(255) not null,
birthday date,
gender varchar(20),
class varchar(20),
foreign key(school_id) references schools(id)
);

create table teacher(
id int auto_increment primary key,
school_id int,
name varchar(255) not null,
surname varchar(255) not null,
brans varchar(255),
foreign key (school_id) references schools(id)
);

create table classes(
id int auto_increment primary key,
school_id int,
name varchar(255) not null,
foreign key (school_id) references school(id)
);

create table class_student(
id int auto_increment primary key,
class_id int,
student_id int,
foreign key (class_id) references classes(id),
foreign key (student_id) references students(id)
);
