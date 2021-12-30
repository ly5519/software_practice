create table teacher
(
    id       int         not null
        primary key,
    name     varchar(20) null,
    sex      varchar(10) null,
    age      int         null,
    username varchar(20) null,
    password varchar(20) null
);

INSERT INTO software_practice.teacher (id, name, sex, age, username, password) VALUES (1, '陈继立', '女', 29, 'cjl', '123456');
