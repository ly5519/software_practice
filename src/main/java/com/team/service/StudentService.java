package com.team.service;

import com.team.pojo.Student;
import org.apache.ibatis.annotations.Param;

/**
 * Data 2021-12-29 20:58
 *
 * @author Liu_Yan
 */
public interface StudentService {
  Student selectStudentById(@Param("id") int id);
}
