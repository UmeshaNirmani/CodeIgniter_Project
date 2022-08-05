create database practicle_db;
use practicle_db;

create table master_batches (
ID int unique not null,
code varchar(20) primary key,
name varchar(20) not null );

create table master_courses (
ID int unique not null,
code varchar(20) primary key,
name varchar(20) not null );

insert into master_batches 
values (1, 'B001', 'Batch One'),
(2, 'B002', 'Batch Two'),
(3, 'B003', 'Batch Three') ;

insert into master_courses 
values (1, 'C001', 'Computer Science'),
(2, 'C002', 'Diploma in English'),
(3, 'C003', 'Health Science'),
(4, 'C004', 'Agriculture'),
(5, 'C005', 'Accounting'),
(6, 'C006', 'Arts'); 

create table batches_courses (
ID int primary key,
batch_id varchar(20),
course_id varchar(20), 
FOREIGN KEY (batch_id) references master_batches(code),
foreign key (course_id) references master_courses(code) );

create table Students (
ID int primary key,
batch_id varchar(20),
course_id varchar(20),
student_name varchar(20) not null,
student_id varchar(20) unique not null,
student_nic varchar(20) unique not null,
student_phone varchar(20) unique not null );