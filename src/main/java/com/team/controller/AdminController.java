package com.team.controller;

import com.team.service.CourseService;
import com.team.service.MajorService;
import com.team.service.StudentService;
import com.team.service.SwCService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Data 2021-12-31 23:30
 *
 * @author Liu_Yan
 */
@Controller
@RequestMapping("/admin")
public class AdminController {


  @RequestMapping("/login")
  public String login() {
    return "adminLogin";
  }


  @RequestMapping("/adminIndex")
  public String index() {
    return "adminIndex";
  }

}
