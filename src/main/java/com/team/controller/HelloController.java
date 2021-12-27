package com.team.controller;

import com.team.pojo.Test;
import com.team.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Data 2021-12-22 09:38
 *
 * @author Liu_Yan
 */
@Controller
public class HelloController {

  @Qualifier("testService")
  private TestService testService;

  @Autowired
  public void setTestService(TestService testService) {
    this.testService = testService;
  }



  @RequestMapping("/hello")
  public String hello(Model model) {

    StringBuilder builder = new StringBuilder();
    for (Test test : testService.printAll()) {
      builder.append(test);
    }


    model.addAttribute("msg", builder);


    return "/jsp/test.jsp";
  }


  @RequestMapping("/testHello")
  public String testHello() {
    return "/html/hello.html";
  }



  
}
