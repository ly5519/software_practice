package com.team.service;

import com.team.dao.StudentMapper;
import com.team.pojo.Student;

/**
 * Data 2021-12-29 20:59
 *
 * @author Liu_Yan
 */
public class StudentServiceImpl implements StudentService{
  private StudentMapper studentMapper;
  public void setStudentMapper(StudentMapper studentMapper) {
    this.studentMapper = studentMapper;
  }

  @Override
  public Student selectStudentById(int id) {
    return studentMapper.selectStudentById(id);
  }
}
