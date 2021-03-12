create table PUBLISHER(
publisher_ID int primary key,
publisher_name nvarchar(50),
publisher_phone nvarchar(50),
publisher_address nvarchar(50),
publisher_email nvarchar(50))

create table BOOK(
ISBN int primary key,
title nvarchar(50),
major nvarchar(50),
page_count int ,
price int ,
publisher_ID int,
shelf_number int,
publisher_place nvarchar(50),
publisher_date date )

create table AUTHOR(
author_id int primary key,
first_name nvarchar(20),
last_name nvarchar(20),
author_address nvarchar(50),
author_email nvarchar(50),
author_phone nvarchar(50),
author_homepage nvarchar(50))

create table BOOK_AUTHOR(
ISBN int foreign key references BOOK(ISBN),
author_id int foreign key references AUTHOR(author_id))

create table projects_inf(
project_id int ,
project_year date,
project_title nvarchar(50),
project_major nvarchar(50),
supervisor nvarchar(50),
id int ,
name nvarchar(50))

alter table projects_inf
drop column name

create table proj_members(
id int primary key ,
name nvarchar(50) unique)

alter table proj_members
drop constraint UQ__proj_mem__72E12F1B7B917B11

alter table projects_inf 
add constraint fk_proj foreign key(id) references proj_members(id)





