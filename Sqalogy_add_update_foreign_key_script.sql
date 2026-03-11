-- Database create query
	-- create database UniversityDb

-- Table create query
	-- create table university_Name(
	-- id int not null auto_increment primary key,
	-- University_name varchar(100),
	-- Department varchar(100)
	-- )

-- Drop table query
-- drop table teacher_info

-- Update Foreign key query
	-- alter table Teacher_info
	-- add column university_id int,
	-- add constraint fk_university
	-- foreign key(university_id)
	-- references university_Name(university_id)

-- Create foreign key query
	-- create table Teacher_info(
	-- id int not null auto_increment primary key,
	-- Teacher_name varchar(100),
	-- Department varchar(50)
	-- university_id INT,
	-- foreign key(university_id) references university_Name(university_id)
	-- )

-- Rename column name query
	-- alter table university_Name
	-- change column id university_id int

-- Rename table name
	-- alter table Tech_info
	-- rename to Teacher_info


-- insert query
	-- insert into Teacher_info(Teacher_name,Department)values
	-- ('Tamim','cse'),
	-- ('Shamim','cse'),
	-- ('hasan','cse'),
	-- ('Rahim','cse')