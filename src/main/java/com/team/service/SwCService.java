package com.team.service;

import com.team.pojo.StudentWithCourse;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SwCService {
  List<StudentWithCourse> selectCourseYouChoose(int id);
  StudentWithCourse selectCourseYouChooseType(int id,int number);
  List<StudentWithCourse> selectSWCByCId(@Param("course_id") int id);
  void elective(int student_id, int course_id);
  void removedCourse(int student_id, int course_id);
  void updatedCourse(int student_id, int course_id, int grade);
}
