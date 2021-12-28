create table student_with_course
(
    student_id int   not null,
    course_id  int   not null,
    grade      float null,
    primary key (student_id, course_id)
);

INSERT INTO software_practice.student_with_course (student_id, course_id, grade) VALUES (1, 1, 1);
