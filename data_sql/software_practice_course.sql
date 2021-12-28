create table course
(
    id         int          not null
        primary key,
    name       varchar(20)  not null,
    period int not null,
    credit     float        not null,
    detail     varchar(100) null comment '这个是描述',
    properties varchar(20)  not null,
    capacity   int          null,
    selected   int          null,
    exam_type  varchar(20)  null
);

INSERT INTO software_practice.course (id, name, period, credit, detail, properties, capacity, selected, exam_type) VALUES (1, 'ssm', 3, 30, 'smk', '计算机 必修', 80, 0, '大作业考察');
