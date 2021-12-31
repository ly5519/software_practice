package com.team.service;

import com.team.pojo.Major;

import java.util.List;

/**
 * Data 2021-12-31 21:41
 *
 * @author Liu_Yan
 */
public interface MajorService {
  List<Major> selectAll();
  Major selectMajorById(int id);
  void insertMajor(Major major);
  void updateMajor(Major major);
  void deleteMajorById(int id);
}
