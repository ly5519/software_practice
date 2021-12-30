package com.team.controller;

import com.team.service.CourseService;
import com.team.service.SwCService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Data 2021-12-30 16:29
 *
 * @author Liu_Yan
 */
@Controller
@RequestMapping("/course")
public class CourseController {
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



  @RequestMapping("chooseCourse")
  public String chooseCourse(int id, int cid) {
    swCService.elective(id, cid);
    return "forward:/student/studentIndex";
  }

  @RequestMapping("removeCourse")
  public String removeCourse(int id, int cid) {
    swCService.removedCourse(id, cid);
    return "forward:/student/studentIndex";
  }


}
