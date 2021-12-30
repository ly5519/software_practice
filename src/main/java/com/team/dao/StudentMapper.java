package com.team.dao;

import com.team.pojo.Student;
import org.apache.ibatis.annotations.Param;

/**
 * Data 2021-12-29 20:50
 *
 * @author Liu_Yan
 */
public interface StudentMapper {
  Student selectStudentById(@Param("id") int id);
}
