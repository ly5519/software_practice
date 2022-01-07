package com.team.service;

import com.team.pojo.Course;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CourseService {
    List<Course> SelectCourseByProperties(String name);

    Course selectCourseById(int id);

    void insertCourse(Course course);

    void updateCourse(Course course);

    void deleteCourseById(@Param("id") int id);

    boolean whetherMust(int id);
}
