package com.team.service;

import com.team.pojo.SWC;
import com.team.pojo.StudentWithCourse;

import java.util.List;

/**
 * Data 2022-01-02 13:07
 *
 * @author Liu_Yan
 */
public interface AdminService {
  boolean thePasswordTrue(String user, String password);
  List<StudentWithCourse> getGradeByCourseId(int course_id);
  StudentWithCourse getOneSWC(int course_id, int student_id);
  void updateGrade(SWC swc);
}
