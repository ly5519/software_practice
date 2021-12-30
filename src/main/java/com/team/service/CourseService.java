package com.team.service;

import com.team.pojo.Course;
import org.apache.ibatis.annotations.Param;


import java.util.List;

public interface CourseService {
  List<Course> SelectCourseByProperties(String name);
  Course selectCourseById(int id);
}
