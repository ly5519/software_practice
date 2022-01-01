package com.team.dao;

import com.team.pojo.StudentWithCourse;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Data 2021-12-30 15:53
 *
 * @author Liu_Yan
 */
public interface SwCMapper {
  List<StudentWithCourse> selectCourseYouChoose(@Param("student_id") int id);
  StudentWithCourse selectCourseYouChooseType(@Param("student_id") int id, @Param("course_id")int number);

  //add
  void elective(@Param("student_id") int id, @Param("course_id")int number);

  //del
  void removedCourse(@Param("student_id") int id, @Param("course_id")int number);

  //update
  void updatedCourse(@Param("student_id") int id, @Param("course_id")int number, @Param("grade")int grade);
}
