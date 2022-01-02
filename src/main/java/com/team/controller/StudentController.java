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
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * Data 2021-12-29 20:45
 *
 * @author Liu_Yan
 */
@Controller
@RequestMapping("/student")
public class StudentController {

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





  @RequestMapping("/login")
  public String login() {
    return "login";
  }


  @RequestMapping("/verify")
  public String verify(String id, String password, Model model) {
    try {
      int number = Integer.parseInt(id);
      Student student = studentService.selectStudentById(number);
      if (password.equals(student.getPassword())) {
        model.addAttribute("id", number);
        return "redirect:/student/studentIndex";
      }else {
        model.addAttribute("msg", "您输入的账号或密码有误！");
        return "login";
      }

    }catch (Exception e) {
      model.addAttribute("msg", "您输入的账号或密码有误！");
      return "login";
    }

  }


  @RequestMapping("/studentIndex")
  public String successPage(int id,Model model) {
    Student student = studentService.selectStudentById(id);
    model.addAttribute("name", student.getName());
    model.addAttribute("sid", student.getId());

    String course = studentService.getMajorName(id);
    List<Course> courses1 = courseService.SelectCourseByProperties(course + " 必修");
    List<Course> courses2 = new ArrayList<>();
    List<Course> courses3 = new ArrayList<>();


    for (Course testData : courseService.SelectCourseByProperties(course + " 选修")) {
      if (swCService.selectCourseYouChooseType(id, testData.getId()) == null){
        courses2.add(testData);
      }
    }
    for (Course testData : courseService.SelectCourseByProperties("任选")) {
      if (swCService.selectCourseYouChooseType(id, testData.getId()) == null){
        courses3.add(testData);
      }
    }



    model.addAttribute("courses1", courses1);
    model.addAttribute("courses2", courses2);
    model.addAttribute("courses3", courses3);


    List<Course> outYourCourses = new ArrayList<>();
    List<StudentWithCourse> yourCourses = swCService.selectCourseYouChoose(student.getId());
    for (StudentWithCourse co : yourCourses) {
      outYourCourses.add(courseService.selectCourseById(co.getCourseId().getId()));
    }

    model.addAttribute("yourCourses", outYourCourses);


    return "studentIndex";
  }



  @RequestMapping("/showGrade")
  public String show(int student_id, Model model) {
    List<StudentWithCourse> list = swCService.selectCourseYouChoose(student_id);
    model.addAttribute("grade", list);

    return "showGrade";
  }


}
