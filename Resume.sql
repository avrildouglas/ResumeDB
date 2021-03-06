drop schema resume;
create schema resume;
use resume;
drop table Applicant;
drop table Education;
drop table Experience;
drop table Skills;

-- Main Tables:
create table Applicant (ApplId int not null auto_increment primary key, FirstName varchar(50), LastName varchar(50), Email varchar(50));
-- (here we populate Applicants running the provided and modified SQL script, Applicant.sql)
create table Education (EducId int not null auto_increment primary key, Education varchar(100));
-- (here we populate Education with education Education.sql)
create table Experience (ExpeId int not null auto_increment primary key, Experience varchar(100));
-- (here we populate Experience with Experience.sql)
create table Skills (SkilId int not null auto_increment primary key, Skill varchar(100));
-- (here we populate Skills with Skills.sql)

-- Alter Tables:
alter table education ADD ApplId int;
alter table experience ADD ApplId int;
alter table skills ADD ApplId int;

-- Relational Tables:
create table AppEdu (ApplId int, EducId int);
create table AppExp (ApplId int, ExpeId int);
create table AppSki (ApplId int, SkilId int);
