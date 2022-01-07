package com.team.dao;

import com.team.pojo.Student;

import java.util.List;

/**
 * Data 2021-12-29 20:50
 *
 * @author Liu_Yan
 */
public interface StudentMapper {
    String getMajorName(int id);

    Student selectStudentById(int id);

    List<Student> selectAll();

    void addStudent(Student student);

    void updateStudent(Student student);

    void deleteStudentById(int id);
}
