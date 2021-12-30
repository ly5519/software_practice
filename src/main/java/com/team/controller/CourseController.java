package com.team.controller;

import com.team.pojo.Course;
import com.team.pojo.Student;
import com.team.pojo.StudentWithCourse;
import com.team.service.CourseService;
import com.team.service.StudentService;
import com.team.service.SwCService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Data 2021-12-30 16:29
 *
 * @author Liu_Yan
 */
@Controller
@RequestMapping("/course")
public class CourseController {

  //服务区域
  @Qualifier("studentService")
  private StudentService studentService;
  @Autowired
  public void setStudentService(StudentService studentService) {
    this.studentService = studentService;
  }

  @Qualifier("courseService")
  private CourseService courseService;
  @Autowired
  public void setCourseService(CourseService courseService) {
    this.courseService = courseService;
  }

  @Qualifier("swcService")
  private SwCService swCService;
  @Autowired
  public void setSwCService(SwCService swCService) {
    this.swCService = swCService;
  }



  @RequestMapping("/chooseCourse")
  public String chooseCourse(int id, int cid) {
    swCService.elective(id, cid);
    return "forward:/student/studentIndex";
  }

  @RequestMapping("/removeCourse")
  public String removeCourse(int id, int cid) {

    if (courseService.whetherMust(cid)) {
      return "forward:/student/studentIndex";
    }


    swCService.removedCourse(id, cid);
    return "forward:/student/studentIndex";
  }



  @RequestMapping("/autoChoose")
  public String autoCourse(int id){
    List<StudentWithCourse> youCurrentCourses = swCService.selectCourseYouChoose(id);

    Student student = studentService.selectStudentById(id);
    String course = student.getMajor().getName();

    if (youCurrentCourses.isEmpty()) {
      List<Course> courses1 = courseService.SelectCourseByProperties(course + " 必修");
      for (Course course1 : courses1) {
        swCService.elective(id, course1.getId());
      }
    }
    return "forward:/student/studentIndex";
  }




}
