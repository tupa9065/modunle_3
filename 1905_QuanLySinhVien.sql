create database QuanLySinhVien;
use quanlysinhvien;
create table Class(
ClassID int not null primary key auto_increment,
ClassName varchar(60) not null,
StartDate date not null,
Status_ bit
);
create table Student(
StudentID int not null primary key auto_increment,
StudentName varchar(30) not null,
Phone varchar(10),
address varchar(100),
Status_ bit,
classid int not null,
foreign key (classid) references class(classid)
);
create table subject_(
subid int not null primary key auto_increment,
subname varchar(60) not null,
credit tinyint not null default 1 check (credit >=1),
Status_ bit default 1
);
CREATE TABLE Mark(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject_ (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);

