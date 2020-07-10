create database Bank;

 create table Clients(
 Id int primary key identity,
 FirstName nvarchar(50) not null,
 LastName nvarchar(50) not null
 )



  create table AccountTypes(
 Id Int primary key identity,
 Name nvarchar(50) not null)
 

create table Accounts(
Id int primary key identity,
AccountTypeId int foreign key references AccountTypes(Id),
Balance decimal(15,2) not null default 0,
ClientId int foreign key references Clients(Id)
 )
  select * from Accounts;

   insert into clients(FirstName,LastName)values
  ('Greta','Andersson'),
  ('Peter','Petersson'),
  ('Mel','Gibson'),
  ('Maria','DAnielsson')
   select * from Clients;

   insert into AccountTypes(Name)values
   ('Checking'),
   ('Savings')
    select * from AccountTypes;
	

	insert into Accounts(ClientId,AccountTypeId,Balance) values
	(1,1,175),
	(2,1,275.16),
	(3,1,138.01),
	(4,1,40.30),
	(4,2,375.20)
	 select * from Accounts;
	  select * from Clients;
	  select * from AccountTypes;


