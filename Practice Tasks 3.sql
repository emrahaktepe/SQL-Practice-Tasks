create table Address (
Adress_ID Integer Primary Key,
Address varchar(30),
Phone Number(11)
);

select * from Address;

insert into Address values (5, '1913 Hanoi Way', 28303384);
insert into Address values (7, '692 Joliet Street', 44847719);
insert into Address values (8, '1566 Inegl Manor', 70581400);
insert into Address values (10, '1795 Santiago', 86045262);
insert into Address values (11, '900 Santiago', 16571220);

create table Customers(
Customer_ID Integer Primary Key,
First_Name varchar(30) Not Null,
Last_Name varchar(30) Not Null,
AdressID Integer references Address(Adress_ID)
);

insert into Customers values (1, 'Mary', 'Smith', 5);
insert into Customers values (2, 'Patricia', 'Johnson', null);
insert into Customers values (3, 'Linda', 'Williams', 7);
insert into Customers values (4, 'Barbara', 'Jones', 8);
insert into Customers values (5, 'Elizabeth', 'Brown', null);

select * from customers;

--  find the address of Linda Williams
select address from Address where Adress_ID = (select adressid from Customers where First_Name = 'Linda');

alter table Address rename column adress_id to address_id;
alter table Customers rename column adressid to address_id;

select * from customers;


