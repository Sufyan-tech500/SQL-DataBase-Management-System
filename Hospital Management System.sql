create database Hospital_Managment_System

---To use Database--------------------------------------------------
use Hospital_Managment_System
---To create Tables and Data----------------------------------------
Create table Patient(P_ID int Primary key,P_Name Varchar(50),Gender Varchar(50),Adress varchar(50),Cnt_no Varchar(50))
create table treatment(P_ID int Foreign key references Patient(P_ID) ,Room_fee bigint,Diagnosesfee bigint,Medicinefee bigint)
Create table Room (P_ID int Foreign key references Patient(P_ID),Room_type varchar(20) not null,Room_no bigint,Admint_date Date not null,Dis_date Date not null)
create table Nurse(E_ID bigint Foreign key references Employee(E_ID),N_ID int Primary Key,N_Name varchar(50)not null,DutyRoom Varchar(50))
create table Employee(E_ID bigint Primary key,E_Name varchar(50),Gender Varchar(20),E_type Varchar(50),Salary bigint,Cnt_no bigint,Adress varchar(50))
create table record(R_ID int Primary key,P_ID int Foreign key references Patient(P_ID),History varchar(100),Appointment varchar(50))
create table Doctor(E_ID bigint Foreign key references Employee(E_ID),D_ID int Primary key,D_name Varchar(50) not null ,Specialist varchar(50))
create table Trainee(T_ID int Primary key,T_name Varchar(50) not null,T_Practice varchar(50))

---Insertion in Tables----------------------------------------------
---Patient Table----------------------------------------------
insert into Patient values(1,'Hamza','Male','Pakistan Mint Lahore',03484833204)
insert into Patient values(2,'Ali','Male','Tajpura Lahore',0344466878)
insert into Patient values(3,'Hassan','Male','china scheme Lahore',0348456204)
insert into Patient values(4,'Saad','Male','Swan garden Islmabad',0323589904)
insert into Patient values(5,'Hashim','Male','LMDC socity Lahore',03235678900)
insert into Patient values(6,'Rooh','Male','Shadra town Lahore',03124753999)
insert into Patient values(7,'Umer','Male','Lahore cant',03345673204)
insert into Patient values(8,'abrar','Male','amamiya colony lahore',0348483323)
insert into Patient values(9,'ahsan','Male','Shara wala park Lahore',03345633205)
insert into Patient values(10,'aizaz','Male','kalma chok Lahore',03438533204)
insert into Patient values(11,'haleema','Female','Kalma chok Lahore',03438533204) 
insert into Patient values(12,'saleem','Male','kalma chok Lahore',03438533204) 
insert into Patient values(13,'Shaid','Male','Kalma chok Lahore',03438533204) 
insert into Patient values(14,'Parveen','Female','Kalma chok Lahore',03438533204) 
insert into Patient values(15,'hamza sarwar','Male','Dha phase 6 Lahore',0348697235) 
insert into Patient values(16,'haseeb','Male','shlimar town Lahore',031267894) 
insert into Patient values(17,'faizan','Male','shalimar town Lahore',03438333204) 
insert into Patient values(18,'rehman','Male','shalimar town Lahore',03438333204) 
insert into Patient values(19,'Hashim bajwa','Male','shalimar town Lahore',0343852358) 
insert into Patient values(20,'imran bajwa','Male','shalmiar town Lahore',0343852358) 
insert into Patient values(21,'mehran','Male','Mughalpura Lahore',03156789034) 
insert into Patient values(22,'adnan','Male','Mughalpura Lahore',03156789034) 
insert into Patient values(23,'arslan','Male','Mughalpura  Lahore',03156789034) 
insert into Patient values(24,'Aiman','Female','Mughalpura Lahore',03156789034) 
insert into Patient values(25,'Faiza','Female','Mughalpura Lahore',03156789034) 
insert into Patient values(26,'waseem','Male','Mughalpura Lahore',03438533204) 
insert into Patient values(27,'haseena','Female','Garishow Lahore',03438533204) 
insert into Patient values(28,'Laiba','Female','Garishow Lahore',03438533203) 
insert into Patient values(29,'rahim','Male','baria town Lahore',03438533202) 
insert into Patient values(30,'ihsan','Male','baghbanpura Lahore',03267893405) 
insert into Patient values(31,'jameel','Male','Dha phase 5 Lahore',03438533204) 
insert into Patient values(32,'basit','Male','cant Lahore',03438533278) 
insert into Patient values(33,'kinza','Female','cant Lahore',0343853357) 
insert into Patient values(34,'khan bahdur','Male','shaimar town Lahore',03438532342) 
insert into Patient values(35,'badam khan','Male','shalimar  town Lahore',03438533223) 
insert into Patient values(36,'ghulab khan','Male','shalimar town Lahore',03468823578) 
insert into Patient values(37,'sheraz','Male','wahadat town Lahore',03438533204) 
insert into Patient values(38,'roahil','Male','shadra Lahore',03438533204) 
insert into Patient values(39,'shoaib','Male','shadra Lahore',03438533204) 
insert into Patient values(40,'arbaz','Male','thokar Lahore',03438533204) 
insert into Patient values(41,'bilal','Male','iqbal town Lahore',03438533467) 
insert into Patient values(42,'usama ','Male','johar town Lahore',03438533456) 
insert into Patient values(43,'hiba','Female','bahira town Lahore',03438533224) 
insert into Patient values(44,'aiza khan','Female','Dha phase 2 Lahore',03438533203)
insert into Patient values(45,'Mahira khan','Female','Dha phase 3 Lahore',03438533223) 
insert into Patient values(46,'Aima baig','Female','Dha phasse 5 Lahore',03438533234) 
insert into Patient values(47,'shan','Male','islmbade',03032234789) 
insert into Patient values(48,'talha','Male','islambad',03032234789) 
insert into Patient values(49,'kashir','Male',' Lahore',03335690999) 
insert into Patient values(50,'daniyal','Male',' Lahore',03335690999) 

---treatment Table----------------------------------------------
insert into treatment values (1,2000,1500,500)
insert into treatment values (2,1500,2000,300)
insert into treatment values (3,1500,1500,600)
insert into treatment values (4,1000,500,850)
insert into treatment values (5,3000,1000,700)
insert into treatment values (6,2500,1500,1000)
insert into treatment values (7,2000,900,250)
insert into treatment values (8,2100,1200,800)
insert into treatment values (9,1800,1300,900)
insert into treatment values (10,1100,1800,500)
insert into treatment values (11,1100,1800,500)
insert into treatment values (12,1000,500,850)
insert into treatment values (13,1800,1300,900)
insert into treatment values (14,1100,1800,500)
insert into treatment values (15,2000,900,250)
insert into treatment values (16,2500,1500,1000)
insert into treatment values (17,1800,1300,900)
insert into treatment values (18,1100,1800,500)
insert into treatment values (19,1800,1300,900)
insert into treatment values (20,2000,900,250)
insert into treatment values (21,1000,500,850)
insert into treatment values (22,1800,1300,900)
insert into treatment values (23,1100,1800,500)
insert into treatment values (24,1800,1300,900)
insert into treatment values (25,2000,900,250)
insert into treatment values (26,1800,1300,900)
insert into treatment values (27,2500,1500,1000)
insert into treatment values (28,1100,1800,500)
insert into treatment values (29,2000,900,250)
insert into treatment values (30,1000,500,850)
insert into treatment values (31,1800,1300,900)
insert into treatment values (32,2000,900,250)
insert into treatment values (33,1100,1800,500)
insert into treatment values (34,2500,1500,1000)
insert into treatment values (35,1100,1800,500)
insert into treatment values (36,1000,500,850)
insert into treatment values (37,2000,900,250)
insert into treatment values (38,1800,1300,900)
insert into treatment values (39,1100,1800,500)
insert into treatment values (40,1000,500,850)
insert into treatment values (41,2000,900,250)
insert into treatment values (42,1100,1800,500)
insert into treatment values (43,1800,1300,900)
insert into treatment values (44,2000,900,250)
insert into treatment values (45,1100,1800,500)
insert into treatment values (46,2500,1500,1000)
insert into treatment values (47,1100,1800,500)
insert into treatment values (48,2000,900,250)
insert into treatment values (49,1800,1300,900)
insert into treatment values (50,1100,1800,500)

---Room Table----------------------------------------------
insert into Room Values(1,'Genral Ward',2,'16jun2021','23jun2021')
insert into Room Values(2,'Vip Room',10,'16jan2022','20jan2022')
insert into Room Values(3,'Genral Ward',3,'21jan2021','21jan2022')
insert into Room Values(4,'Emergancy Ward',1,'16jan2021','27jan2022')
insert into Room Values(5,'Vip Room',4,'19jan2022','21jan2022')
insert into Room Values(6,'Vip Room',11,'18jan2022','25jan2022')
insert into Room Values(7,'Ladies Ward',4,'15dec2021','5jan2022')
insert into Room Values(8,'Gents Ward',5,'5jan2022','20jan2022')
insert into Room Values(9,'child Ward',9,'1jan2022','15jan2022')
insert into Room Values(10,'Genral Ward',2,'28Dec2021','10jan2022')

---Employee Table----------------------------------------------
insert into Employee values(1001,'Hamza SHabbir','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1002,'Qadeer','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1003,'Ali','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1004,'Hassan','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1005,'Alina','Female','Docter',250000,03000000000,'Lahore')
insert into Employee values(1006,'Zainab','Female','Docter',250000,03000000000,'Lahore')
insert into Employee values(1007,'Zeeshan','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1008,'Usman','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1009,'Shaista','Female','Docter',250000,03000000000,'Lahore')
insert into Employee values(1010,'daniyal','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1011,'jameel','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1012,'laraib','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1013,'qandeel','Female','Docter',250000,03000000000,'Lahore')
insert into Employee values(1014,'rizwan','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1015,'shaista','Female','Docter',250000,03000000000,'Lahore')
insert into Employee values(1016,'shumaila','Female','Docter',250000,03000000000,'Lahore')
insert into Employee values(1017,'aliza','Female','Docter',250000,03000000000,'Lahore')
insert into Employee values(1018,'rehan','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1019,'alamgir khan','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1020,'aziz','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1021,'sufyan','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1022,'kiran','Female','Docter',250000,03000000000,'Lahore')
insert into Employee values(1023,'jabran','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1024,'faisal','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1025,'shadab','Male','Docter',250000,03000000000,'Lahore')
insert into Employee values(1026,'haris','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1027,'emaan','Female','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1028,'arham','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1028,'arham','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1028,'arham','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1029,'jawad','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1030,'dua','Female','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1031,'arfa','Female','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1032,'khuram','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1033,'azam','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1034,'imran','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1035,'noor','Female','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1036,'armaan','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1037,'mera','Female','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1038,'shabbir','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1039,'adil','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1040,'hassan','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1041,'uzair','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1042,'asif','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1043,'maryam','Female','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1044,'mohsin','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1045,'rashid','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1046,'umair','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1047,'hannan','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1048,'waqar','Male','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1049,'hina','Female','Docter',300000,0311111111,'Islamabad')
insert into Employee values(1050,'yousaf','Male','Docter',300000,0311111111,'Islamabad')

insert into Employee values(2001,'Arzoo','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2002,'Nelum','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2003,'Hayat','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2004,'javeriyA','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2005,'Arooj','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2006,'Ayesha','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2007,'umber','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2008,'Maryam','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2009,'sadaf','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2010,'hufsa','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2011,'shiza','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2012,'sumbal','Female','Nurse',50000,032222222,'Lahore')
insert into Employee values(2013,'alina','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2014,'tabinda','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2015,'hina','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2016,'aiman','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2017,'qandeel','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2018,'andleeb','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2019,'shiza','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2020,'fiza','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2021,'aini','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2022,'quratulain','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2023,'maham','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2024,'rabia','Female','Nurse',50000,0333333333,'Lahore')
insert into Employee values(2025,'rimsha','Female','Nurse',50000,0333333333,'Lahore')
---record Table----------------------------------------------
insert into record values (01,1,'Accident case','Emergency')
insert into record values (02,2,'Heart Patient','25Jan2022')
insert into record values (03,3,'Asthma Patient','Emergency')
insert into record values (04,4,'Liver Translpant','24Jan2022')
insert into record values (05,5,'Dangue fever','Emergancy')
insert into record values (06,6,'Blood cancer','10Jan2022')
insert into record values (07,7,'hand Broken','emergency')
insert into record values (08,8,'Denatal case','28Jan2022')
insert into record values (09,9,'Accident case','Emergency')
insert into record values (10,10,'insomia case','27Jan2022')
insert into record values (11,11,'Crona Patient','Emergency')
insert into record values (12,12,'Asthma Patien','10Jan2022')
insert into record values (13,13,'Heart Patient','10Jan2022')
insert into record values (14,14,'Denatal case','27Jan2022')
insert into record values (15,15,'Accident case','Emergency')
insert into record values (16,16,'Crona Patient','Emergency')
insert into record values (17,17,'Heart Patient','27Jan2022')
insert into record values (18,18,'Asthma Patien','10Jan2022')
insert into record values (19,19,'Accident case','Emergency')
insert into record values (20,20,'Heart Patient','10Jan2022')
insert into record values (21,21,'Crona Patient','Emergency')
insert into record values (22,22,'Accident case','Emergency')
insert into record values (23,23,'Asthma Patien','27Jan2022')
insert into record values (24,24,'Heart Patient','11Jan2022')
insert into record values (25,25,'Denatal case','10Jan2022')
insert into record values (26,26,'Heart Patient','11Jan2022')
insert into record values (27,27,'Crona Patient','Emergency')
insert into record values (28,28,'Heart Patient','27Jan2022')
insert into record values (29,29,'Crona Patient','Emergency')
insert into record values (30,30,'Accident case','Emergency')
insert into record values (31,31,'Crona Patient','Emergency')
insert into record values (30,30,'Denatal case','27Jan2022')
insert into record values (30,30,'Heart Patient','10Jan2022')
insert into record values (30,30,'Asthma Patien','12Jan2022')
insert into record values (30,30,'Accident case','Emergency')
insert into record values (30,30,'Denatal case','13Jan2022')
insert into record values (30,30,'Asthma Patien','10Jan2022')
insert into record values (30,30,'Heart Patient','27Jan2022')
insert into record values (40,40,'Crona Patient','Emergency')
insert into record values (41,41,'Denatal case','12Jan2022')
insert into record values (42,42,'Accident case','Emergency')
insert into record values (43,43,'Heart Patient','10Jan2022')
insert into record values (44,44,'Heart Patient','27Jan2022')
insert into record values (45,45,'Asthma Patien','12Jan2022')
insert into record values (46,46,'Denatal case','115Jan2022')
insert into record values (47,47,'Accident case','Emergency')
insert into record values (48,48,'Heart Patient','19Jan2022')
insert into record values (49,49,'Crona Patient','Emergency')
insert into record values (50,50,'Heart Patient','27Jan2022')

---Docter Table----------------------------------------------
insert into Doctor values(1001,1,'Hamza SHabbir','heart Specialist')
insert into Doctor values(1002,2,'Qadeer','heart Specialist')
insert into Doctor values(1003,3,'Ali','Child Specialist')
insert into Doctor values(1004,4,'Hassan','Physiotharpist')
insert into Doctor values(1005,5,'Alina','Surgen')
insert into Doctor values(1006,6,'Zainab','heart Specialist')
insert into Doctor values(1007,7,'Zeeshan','heart Specialist')
insert into Doctor values(1008,8,'Usman','Neurologist')
insert into Doctor values(1009,9,'Shaista','Phsycologist')
insert into Doctor values(1010,10,'daniyal','kidney & liver Specialist')
insert into Doctor values(1011,11,'jameel','heart Specialist')
insert into Doctor values(1012,12,'laraib','Child Specialist')
insert into Doctor values(1013,13,'qandeel','Physiotharpist')
insert into Doctor values(1014,14,'rizwan','heart Specialist')
insert into Doctor values(1015,15,'shaista','Neurologist')
insert into Doctor values(1016,16,'shumaila','Child Specialist')
insert into Doctor values(1017,17,'aliza','heart Specialist')
insert into Doctor values(1018,18,'rehan','heart Specialist')
insert into Doctor values(1019,19,'alamgir khan','Physiotharpist')
insert into Doctor values(1020,20,'aziz','Neurologist')
insert into Doctor values(1021,21,'sufyan','Child Specialist')
insert into Doctor values(1022,22,'kiran','heart Specialist')
insert into Doctor values(1023,23,'jabran','Surgen')
insert into Doctor values(1024,24,'faisal','Neurologist')
insert into Doctor values(1025,25,'shadab','Child Specialist')
insert into Doctor values(1026,26,'haris','heart Specialist')
insert into Doctor values(1027,27,'emaan','Surgen')
insert into Doctor values(1028,28,'arham','Neurologist')
insert into Doctor values(1029,29,'jawad','Child Specialist')
insert into Doctor values(1030,30,'dua','heart Specialist')
insert into Doctor values(1031,31,'arfa','Neurologist')
insert into Doctor values(1032,32,'khuram','Child Specialist')
insert into Doctor values(1033,33,'azam','heart Specialist')
insert into Doctor values(1034,34,'imran','Physiotharpist')
insert into Doctor values(1035,35,'noor','Child Specialist')
insert into Doctor values(1036,36,'armaan','Surgen')
insert into Doctor values(1037,37,'mera','heart Specialist')
insert into Doctor values(1038,38,'shabbir','Neurologist')
insert into Doctor values(1039,39,'adil','Child Specialist')
insert into Doctor values(1040,40,'hassan','Surgen')
insert into Doctor values(1041,41,'uzair','heart Specialist')
insert into Doctor values(1042,42,'asif','Neurologist')
insert into Doctor values(1043,43,'maryam','Child Specialist')
insert into Doctor values(1044,44,'mohsin','heart Specialist')
insert into Doctor values(1045,45,'rashid','Physiotharpist')
insert into Doctor values(1046,46,'umair','Neurologist')
insert into Doctor values(1047,47,'hannan','heart Specialist')
insert into Doctor values(1048,48,'waqar','Surgen')
insert into Doctor values(1049,49,'hina','Child Specialist')
insert into Doctor values(1050,50,'yousaf','heart Specialist')

---Trainee Table----------------------------------------------
insert into Trainee values(1,'usman','child specialist')
insert into Trainee values(2,'Shanawaz','child specialist')
insert into Trainee values(3,'Ahsan','child specialist')
insert into Trainee values(4,'Rizwan','Surgen')
insert into Trainee values(5,'Mariyam','child specialist')
insert into Trainee values(6,'Sulman','Surgen')
insert into Trainee values(7,'Azeem','Physiotharpist')
insert into Trainee values(8,'Aziz','Physiotharpist')
insert into Trainee values(9,'Rehman','child specialist')
insert into Trainee values(10,'shezad','Neurologist')

---nurse Table----------------------------------------------
insert into Nurse values(2001,1,'Arzoo','Genral ward 2')
insert into Nurse values(2002,2,'Nelum','Vip room 2')
insert into Nurse values(2003,3,'Hayat','Genral ward 1')
insert into Nurse values(2004,4,'javeriyA','Vip room 1')
insert into Nurse values(2005,5,'Arooj','Genral ward 3')
insert into Nurse values(2006,6,'Ayesha','Vip room 10')
insert into Nurse values(2007,7,'umber','Genral ward 5')
insert into Nurse values(2008,8,'Maryam','Vip room 3')
insert into Nurse values(2009,9,'sadaf','Genral ward 6')
insert into Nurse values(2010,10,'hufsa','child ward')
insert into Nurse values(2011,11,'shiza','Genral ward 6')
insert into Nurse values(2012,12,'sumbal','child ward')
insert into Nurse values(2013,13,'alina','Vip room 3')
insert into Nurse values(2014,14,'tabinda','Vip room 3')
insert into Nurse values(2015,15,'hina','Genral ward 6')
insert into Nurse values(2016,16,'aiman','Genral ward 6')
insert into Nurse values(2017,17,'qandeel','child ward 1')
insert into Nurse values(2018,18,'andleeb','child ward 2')
insert into Nurse values(2019,19,'shiza','Genral ward 6')
insert into Nurse values(2020,20,'fiza','Genral ward 3')
insert into Nurse values(2021,21,'aini','Genral ward 6')
insert into Nurse values(2022,22,'quratulain','Genral ward 5')
insert into Nurse values(2023,23,'maham','Genral ward 3')
insert into Nurse values(2024,24,'rabia','Genral ward 6')
insert into Nurse values(2025,25,'rimsha','Genral ward 6')

---To Show Tables and Data------------------------------------
select * from Patient
select * from treatment
select * from Room
select * from Employee
select * from record
select * from Doctor
select * from Trainee
select * from Nurse


---To alter and Update Table--------------------------------------------
alter table Trainee
add Phone_No varchar(50)

update Trainee
set Phone_No = '03481451654'
where T_ID = 2
update Trainee
set Phone_No = 'koi nhi he'
where T_ID = 10

---Group by and asc or desc--------------------------------------------

select P_ID
from Patient
order by P_ID Desc

select P_ID
from Patient
order by P_ID Asc

select Adress, Sum(salary)
from Employee
Group by Adress

---Sum avg count--------------------------------------------
Select count (P_ID)
from Patient

Select avg (P_ID)
from Patient

Select  sum(Room_fee+Diagnosesfee+Medicinefee)
as total_Bill
from treatment
where P_ID =2

select min(E_ID), max(Salary)
from Employee

select sum(Salary)
as total_salries
from Employee

---between and not between-----------------------
select *from Employee
where E_ID 
between 1002 and 1005

select *from Employee
where E_ID 
not between 1008 and 1008

---joins----------------------------------
select *from Patient
inner join Room
on Patient.P_ID= Room.P_ID

select *from Patient
full outer join Doctor
on Patient.P_ID= Doctor.D_ID

select *from Patient
inner join Doctor
on Patient.P_ID= Doctor.D_ID

select *from Patient
left join Doctor
on Patient.P_ID= Doctor.D_ID

select *from Patient
right join Doctor
on Patient.P_ID= Doctor.D_ID

---view-------------------------------------------------------------------------------------------------------------------

create view vw_Patient
as
select *from Patient
full outer join Doctor
on Patient.P_ID= Doctor.D_ID

select *from vw_Patient

create view vw_Patient1
as
select *from Patient
inner join Doctor
on Patient.P_ID= Doctor.D_ID
where P_Name ='Rooh'

select *from vw_Patient1

sp_helptext vw_Patient

sp_helptext P_Patient
---Trigger--------------------------
create trigger change
on Patient
after insert as begin
print 'change appear'
end

insert into Patient values(52,'shazad','Male','Dha phase 8 Lahore',033446773204) 
select * from Patient

create trigger chang2
on Patient
after delete as begin
print 'deleted'
end
delete from Patient where P_ID=51

---short procedure-------------------------------------------
create procedure P_Patient
as begin
select *from Patient
end

exec P_Patient

create procedure P3_Patient
as begin 
create table Hamza(H_ID int, name varchar(50))
end

Drop table Hamza
exec P3_Patient
select *from Hamza

drop procedure P3_Patient

drop table Employee 
drop table Nurse
drop table Docter
Delete from Employee
Delete from Nurse
Delete from Docter
select *from Employee