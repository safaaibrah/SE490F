

INSERT INTO  [dbo].[Student](STName,Number,Birthday,DepID,NatID,CollgID,RoomID)
VALUES ('Saja','227','10-20-2000',7,2,3,8);
Select *from [dbo].[Student];
update [dbo].[Student]
Set Name='safaa'
where ID=6;

SELECT Student.Name,Student.Number,Departmenet.DepName,Collage.Name
From Student Inner join Departmenet on Student.DepID=Departmenet.ID
inner join Collage on Student.CollgID=Collage.ID 


Alter view view_Student
as
SELECT Student.STName,Student.Birthday,Student.Number,Departmenet.DepName,Collage.Name
From Student Inner join Departmenet on Student.DepID=Departmenet.ID
 join Collage 
 on Student.CollgID=Collage.ID

 Select *from  [view_Student]

 create view view_Departmenet
as
SELECT Departmenet.DepName,Collage.Name
From Departmenet Inner join Collage on Departmenet.CollgID=Collage.ID
 

Select *from [view_Departmenet]

create view view_collage
as
select *from [dbo].[Collage]
select *from[dbo].[view_collage]

create proc Insert_Dep @name nvarchar(50),@code nvarchar(50),@collgeID int
as
insert into Departmenet (DepName,Code,CollgID) values(@name,@code,@collgeID)

exec Insert_Dep N'Â‰œ”… ’‰«⁄Ì…','ES',2
select *from [dbo].[Departmenet]

create proc Edit_Dep @ID int, @name nvarchar(50),@code nvarchar(50),@collgeID int
as
UPDATE Departmenet SET 
DepName=@name,
Code=@code ,
CollgID=@collgeID

create Proc Delet_Dep
@ID int
as
Delete From Departmenet Where ID=@ID

