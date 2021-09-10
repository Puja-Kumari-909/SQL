--Create table Customer master table: Cust

CREATE TABLE cust(
    cust_id VARCHAR2(3) primary key,
    lname VARCHAR2(15),
    fname VARCHAR2(15),
    area varchar(2),
    phone_no number(8)
);

--Create table Movie master table: movie
create table movie
(
mv_no varchar(2) primary key,
title varchar(25),
type varchar(10),
star varchar(25)
);

--Create table Invoice transaction table: invoice
create table invoice
(
Inv_no varchar(3) primary key,
Mv_no varchar(2),
Cust_id varchar(3),
Issue_date date,
Return_date date
);

--add foreign key cus_id of invoice to primary key cus_id of customer table
alter table invoice
add constraint c1
foreign key(cust_id)
references cust(cust_id);

-- add foreign key mv_no of invoice to primary key mv_no of movie table
alter table invoice
add constraint c2
foreign key(mv_no)
references movie(mv_no);

--make all the columns not null of both tables
alter table cust
modify (lname not null, fname not null);


alter table movie
modify (title not null, type not null);

--add a new column price in movie table
alter table movie
add price number(8,2);