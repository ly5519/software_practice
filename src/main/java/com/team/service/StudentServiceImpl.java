package com.team.service;

import com.team.dao.StudentMapper;
import com.team.pojo.Student;

import java.util.List;

/**
 * Data 2021-12-29 20:59
 *
 * @author Liu_Yan
 */
public class StudentServiceImpl implements StudentService {
    private StudentMapper studentMapper;

    public void setStudentMapper(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    @Override
    public String getMajorName(int id) {
        return studentMapper.getMajorName(id);
    }

    @Override
    public Student selectStudentById(int id) {
        return studentMapper.selectStudentById(id);
    }

    @Override
    public List<Student> selectAll() {
        return studentMapper.selectAll();
    }

    @Override
    public void addStudent(Student student) {
        studentMapper.addStudent(student);
    }

    @Override
    public void updateStudent(Student student) {
        studentMapper.updateStudent(student);
    }

    @Override
    public void deleteStudentById(int id) {
        studentMapper.deleteStudentById(id);
    }
}
