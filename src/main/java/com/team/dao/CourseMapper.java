package com.team.dao;

import com.team.pojo.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Data 2021-12-30 13:00
 *
 * @author Liu_Yan
 */
public interface CourseMapper {
  List<Course> SelectCourseByProperties(@Param("properties") String name);
  Course selectCourseById(@Param("id")int id);
}
