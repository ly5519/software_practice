create table teacher_with_course
(
    teacher_id int         null,
    course_id  int         null,
    place      varchar(20) null,
    time       varchar(20) null
);

INSERT INTO software_practice.teacher_with_course (teacher_id, course_id, place, time) VALUES (1, 10, null, null);
