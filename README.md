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

```sql
CREATE TABLE `course` (
    #课程号
  `id` int,
    #课程名
  `name` varchar(20) not null ,
    #学时
  `period` int not null not null ,
    #学分
  `credit` float not null ,
    #课程介绍
  `detail` varchar(100) ,
    #必修/选修
  `properties` varchar(20) not null ,
    #课程容量
  `capacity` int not null ,
    #已选人数
  `selected` int not null ,
    #考试性质 正常考试/考察
  `exam_type` varchar(20) not null ,
  PRIMARY KEY (`id`)
);

CREATE TABLE `student` (
    #学号
  `id` int not null ,
    #姓名
  `name` varchar(50) not null ,
    #性别
  `sex` varchar(10) not null ,
    #年龄
  `age` int not null ,
    #用户名
  `username` varchar(20) not null ,
    #登陆密码
  `password` varchar(20) not null ,
    #专业代码
  `major` int not null ,
    #入学年份
  `enrollment` Date not null ,
  PRIMARY KEY (`id`)
);

CREATE TABLE `teacher` (
    #工号
  `id` int not null ,
    #姓名
  `name` varchar(20) not null ,
    #性别
  `sex` varchar(10) not null ,
    #年龄
  `age` int not null ,
    #用户名
  `username` varchar(20) not null ,
    #登陆密码
  `password` varchar(20) not null ,
  PRIMARY KEY (`id`)
);

CREATE TABLE `admin` (
    #用户名
  `username` varchar(20) not null ,
    #登陆密码
  `password` varchar(20) not null ,
  PRIMARY KEY (`username`)
);

CREATE TABLE `major` (
    #专业代码
  `id` int not null ,
    #专业名称
  `name` varchar(20) not null ,
  PRIMARY KEY (`id`)
);

CREATE TABLE `teacher_with_course` (
    #工号
  `teacher_id` int not null ,
    #课程号
  `course_id` int not null ,
    #上课地点
  `place` varchar(20),
    #上课时间
  `time` varchar(20)
);

CREATE TABLE `student_with_course` (
    #学号
  `student_id` int not null ,
    #课程号
  `course_id` int not null ,
    #课程成绩
  `grade` float not null ,
  PRIMARY KEY (`student_id`, `course_id`)
);

```

### 测试用例

```sql
INSERT INTO software_practice.admin (username, password) VALUES ('qlf', '123');
INSERT INTO software_practice.course (id, name, period, credit, properties, capacity, selected, exam_type, detail) VALUES (1, 'ssm', 3, 30, '计算机 必修', 80, 0, '大作业考察', 'smk');
INSERT INTO software_practice.major (id, name) VALUES (10, '计算机');
INSERT INTO software_practice.student (id, name, sex, age, username, password, major, enrollment) VALUES (1, 'qlf', '男', 100, 'qlf', '123456', 10, '2021-09-01');
INSERT INTO software_practice.student_with_course (student_id, course_id, grade) VALUES (1, 1, 1);
INSERT INTO software_practice.teacher (id, name, sex, age, username, password) VALUES (1, '陈继立', '女', 29, 'cjl', '123456');
INSERT INTO software_practice.teacher_with_course (teacher_id, course_id, place, time) VALUES (1, 10, null, null);
```
