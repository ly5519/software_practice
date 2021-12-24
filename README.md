## 题目要求
题目十三：学生网上选课系统的设计开发  
学生网上选课系统是教学管理中的一种重要应用。系统的基本目标包括：  
1、图形用户界面。  
2、必修课自动选课。  
3、限选课选课功能。  
4、任选课选课功能。  
5、成绩录入功能。  
6、成绩打印功能。  


![image](https://user-images.githubusercontent.com/77131638/147187242-2e7423c8-4f1a-47d7-b399-b8465588fa9d.png)

## 数据库测试用例
```mysql
create database software_practice;
create table software_practice.test(
    id int not null ,
    message varchar(10) not null
);
insert software_practice.test values (1, 'fuck'),
                            (2, 'you'),
                            (3, 'ssm');
```

## 数据库设计

![image](https://user-images.githubusercontent.com/77131638/147310779-6f67aa08-dd3d-40ce-9740-db9d58ade21b.png)



```sql
CREATE TABLE `course` (
  `id` int,
  `name` varchar(20),
  `period` int,
  `credit` float,
  `detail` varchar(100),
  `properties` varchar(20),
  `cpacity` int,
  `selected` int,
  `eaxm_type` varchar(20),
  PRIMARY KEY (`id`)
);

CREATE TABLE `student` (
  `id` int,
  `name` varchar(50),
  `sex` varchar(10),
  `age` int,
  `username` varchar(20),
  `password` varchar(20),
  `major` int,
  `enrollment` Date,
  PRIMARY KEY (`id`)
);

CREATE TABLE `teacher` (
  `id` int,
  `name` varchar(20),
  `sex` varchar(10),
  `age` int,
  `username` varchar(20),
  `password` varchar(20),
  PRIMARY KEY (`id`)
);

CREATE TABLE `admin` (
  `username` varchar(20),
  `password` varchar(20),
  PRIMARY KEY (`username`)
);

CREATE TABLE `major` (
  `id` int,
  `name` varchar(20),
  PRIMARY KEY (`id`)
);

CREATE TABLE `teacher_with_course` (
  `teacher_id` int,
  `course_id` int,
  `place` varchar(20),
  `time` varchar(20)
);

CREATE TABLE `sutdent_with_course` (
  `student_id` int,
  `course_id` int,
  `grade` float,
  PRIMARY KEY (`student_id`, `course_id`)
);

```
