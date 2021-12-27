package com.team.controller;

import com.team.pojo.Test;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Data 2021-12-27 10:12
 *
 * @author Liu_Yan
 */
@RestController
@RequestMapping("/AJAX")
public class AjaxController {

  @RequestMapping("/helloTest")
  public String helloTest() {
    return "Hello AJAX.";
  }

  @RequestMapping("/fuckJSON")
  public Test jsonTest() {
    return new Test(1234, "fuck json");
  }
}
