package com.team.service;

import com.team.dao.MajorMapper;
import com.team.pojo.Major;

import java.util.List;

/**
 * Data 2021-12-31 21:41
 *
 * @author Liu_Yan
 */
public class MajorServiceImpl implements MajorService{
  private MajorMapper majorMapper;
  public void setMajorMapper(MajorMapper majorMapper) {
    this.majorMapper = majorMapper;
  }

  @Override
  public List<Major> selectAll() {
    return majorMapper.selectAll();
  }

  @Override
  public Major selectMajorById(int id) {
    return majorMapper.selectMajorById(id);
  }

  @Override
  public void insertMajor(Major major) {
    majorMapper.insertMajor(major);
  }

  @Override
  public void updateMajor(Major major) {
    majorMapper.updateMajor(major);
  }

  @Override
  public void deleteMajorById(int id) {
    majorMapper.deleteMajorById(id);
  }
}
