package com.team.service;

import com.team.dao.SwCMapper;
import com.team.pojo.StudentWithCourse;

import java.util.List;

/**
 * Data 2021-12-30 16:07
 *
 * @author Liu_Yan
 */
public class SwCImpl implements SwCService{
  private SwCMapper swCMapper;
  public void setSwCMapper(SwCMapper swCMapper) {
    this.swCMapper = swCMapper;
  }

  @Override
  public List<StudentWithCourse> selectCourseYouChoose(int id) {
    return swCMapper.selectCourseYouChoose(id);
  }

  @Override
  public StudentWithCourse selectCourseYouChooseType(int id, int number) {
    return swCMapper.selectCourseYouChooseType(id, number);
  }

  @Override
  public void elective(int student_id, int course_id) {
    swCMapper.elective(student_id, course_id);
  }

  @Override
  public void removedCourse(int student_id, int course_id) {
    swCMapper.removedCourse(student_id, course_id);
  }
}
