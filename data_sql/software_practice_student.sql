create table student
(
    id         int         not null
        primary key,
    name       varchar(50) null,
    sex        varchar(10) null,
    age        int         null,
    username   varchar(20) null,
    password   varchar(20) null,
    major      int         null,
    enrollment date        null
);

INSERT INTO software_practice.student (id, name, sex, age, username, password, major, enrollment) VALUES (1, 'qlf', '男', 100, 'qlf', '123456', 10, '2021-09-01');
