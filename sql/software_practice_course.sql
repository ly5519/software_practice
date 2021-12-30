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
INSERT INTO software_practice.course (id, name, period, credit, detail, properties, capacity, selected, exam_type) VALUES (2, 'python', 1, 15, 'fuck python', '计算机 选修', 50, 12, '大作业');
INSERT INTO software_practice.course (id, name, period, credit, detail, properties, capacity, selected, exam_type) VALUES (3, 'java', 2, 60, 'java nonono', '计算机 必修', 100, 50, '上机考试');
INSERT INTO software_practice.course (id, name, period, credit, detail, properties, capacity, selected, exam_type) VALUES (4, '人工智能', 2, 50, '机器学习', '计算机 选修', 50, 1, '小组作业');
INSERT INTO software_practice.course (id, name, period, credit, detail, properties, capacity, selected, exam_type) VALUES (5, '语文', 1, 30, '混日子', '任选', 50, 2, '论文');
INSERT INTO software_practice.course (id, name, period, credit, detail, properties, capacity, selected, exam_type) VALUES (6, '历史', 2, 50, '学习历史悠久文化', '任选', 500, 450, '小型题目讨论');
