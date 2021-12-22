package com.team.service;

import com.team.dao.TestMapper;
import com.team.pojo.Test;

import java.util.List;

/**
 * Data 2021-12-22 10:28
 *
 * @author Liu_Yan
 */
public class TestServiceImpl implements TestService{

  private TestMapper testMapper;

  public void setTestMapper(TestMapper testMapper) {
    this.testMapper = testMapper;
  }

  @Override
  public List<Test> printAll() {
    return testMapper.printAll();
  }
}
