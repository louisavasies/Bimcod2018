IF db_id('Bimcod') is not null
	DROP Database Bimcod
CREATE Database Bimcod
GO
Use Bimcod



create table [User](
	Id int Primary Key Identity, 
	Username nvarchar(100),
	Email nvarchar(100) UNIQUE,
	Pass nvarchar(100),
	Token varchar(100),
	IsConfirmed bit NOT NULL);

create table Car(
	Id int Primary Key Identity,
	Model nvarchar(10),
	Type nvarchar(10),
	UserId int references [User](Id));
	
	
create table Module(
	ModuleName nvarchar(10) Primary Key,
	[For] nvarchar(10));
	
create table [Option](
	Id int Primary Key Identity,
	Description nvarchar(100),
	Duration int, 
	ModuleName nvarchar(10) references Module(ModuleName),
	Price int);
	
create table CarOption(
	CarId int references Car(Id),
	OptionId int references [Option](Id),
	Primary Key(CarId, OptionId));
	
create table Part(
	Id int Primary Key Identity,
	Name nvarchar(50));
	
create table OptionPart(
	OptionId int references [Option](Id),
	PartId int references Part(Id),
	Primary Key(OptionId, PartId));