create table student_with_course
(
    student_id int   not null,
    course_id  int   not null,
    grade      float null,
    primary key (student_id, course_id),
    constraint student_with_course_course__fk
        foreign key (course_id) references course (id),
    constraint student_with_course_student__fk
        foreign key (student_id) references student (id)
);

