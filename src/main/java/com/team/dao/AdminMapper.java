package com.team.dao;

import com.team.pojo.Admin;
import com.team.pojo.SWC;
import com.team.pojo.StudentWithCourse;

import java.util.List;

/**
 * Data 2022-01-02 13:14
 *
 * @author Liu_Yan
 */
public interface AdminMapper {
  Admin selectAdminByUsername(String username);
  void updateSWC(SWC swc);
}
