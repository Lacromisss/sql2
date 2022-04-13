CREATE DATABASE CentilmenMustikkkk
use CentilmenMustikkkk
create table Authors
(
Id int primary key identity,
Name NVARCHAR(40) not null,
Surname NVARCHAR(40) not  null,




)

create table Books
(
Id int primary key identity,
Name nvarchar(40) not null  check (len(Name) between 2 and 100),
AuthorId int foreign key references  Authors(Id),
PageCount int not  null check (PageCount>=10)







)
insert into Authors
values
('Mustafa','Qasimzade'),
('Elmeddin','Elmeddinli')
insert into Books
values
('test1',1,33),
('test2',2,10)



create view _library
as
select b.Id,b.Name,b.PageCount,a.Name+''+a.Surname 'AuthorFullName' from Books b
join Authors a
on b.AuthorId=A.Id


 create procedure authorFullNamee
 @AuthorFullName nvarchar(30)
as
select *from _library
where AuthorFullName=@AuthorFullName

exec authorFullNamee 'MustafaQasimzade'

create procedure insertAuthors
@Name nvarchar(40),
@Surname nvarchar(40)
as



create procedure authorCount
as
select count(Id) from Authors where Authors.Id=1






create procedure deletAuthors
as



delete Authors

create procedure updateAuthor
@Name nvarchar(30)
as

update Authors
set Name=@Name
where Name=@Name











create procedure autFullname
as
select Name,Surname as 'AuthorFullName' from Authors 