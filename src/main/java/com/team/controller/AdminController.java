package com.team.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.team.pojo.SWC;
import com.team.pojo.StudentWithCourse;
import com.team.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Data 2022-01-02 13:06
 *
 * @author Liu_Yan
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
  @Qualifier("adminService")
  private AdminService adminService;
  @Autowired
  public void setAdminService(AdminService adminService) {
    this.adminService = adminService;
  }



  @RequestMapping("/login")
  public String login() {
    return "/admin/login";
  }

  @RequestMapping("/index")
  public String index(String user, String password) {
    if (adminService.thePasswordTrue(user, password)) {
      return "/admin/index";
    }else return "/admin/Incorrect";
  }

  @RequestMapping("/getCourse")
  public String getCourse(int course_id, Model model) {
    List<StudentWithCourse> list = adminService.getGradeByCourseId(course_id);
    model.addAttribute("CourseList", list);
    return "/admin/index";
  }

  @RequestMapping("/toUpdatePage")
  public String updateGrade(int course_id, int student_id, Model model) {
    StudentWithCourse oneSWC = adminService.getOneSWC(course_id, student_id);
    model.addAttribute("oneRecord", oneSWC);
    System.out.println(oneSWC);
    return "admin/update";
  }

  @RequestMapping("/update")
  public String update(int course_id, int student_id, float grade, Model model) {
    SWC swc = new SWC(student_id, course_id, grade);
    adminService.updateGrade(swc);
    model.addAttribute("course_id", course_id);
    return "redirect:/admin/getCourse";
  }

}
