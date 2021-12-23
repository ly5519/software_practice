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
```sql
create database software_practice;
create table software_practice.test(
    id int not null ,
    message varchar(10) not null
);
insert software_practice.test values (1, 'fuck'),
                            (2, 'you'),
                            (3, 'ssm');
```


目前idea配置上传导致冲突无法运行，正在尝试修改
