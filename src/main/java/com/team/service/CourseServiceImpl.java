package com.team.service;

import com.team.dao.CourseMapper;
import com.team.pojo.Course;

import java.util.List;

/**
 * Data 2021-12-30 13:04
 *
 * @author Liu_Yan
 */
public class CourseServiceImpl implements CourseService{
  private CourseMapper courseMapper;

  public void setCourseMapper(CourseMapper courseMapper) {
    this.courseMapper = courseMapper;
  }

  @Override
  public List<Course> SelectCourseByProperties(String name) {
    return courseMapper.SelectCourseByProperties(name);
  }

  @Override
  public Course selectCourseById(int id) {
    return courseMapper.selectCourseById(id);
  }
}
