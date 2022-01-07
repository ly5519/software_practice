package com.team.controller;

import com.team.pojo.Course;
import com.team.pojo.Major;
import com.team.pojo.Student;
import com.team.pojo.StudentWithCourse;
import com.team.service.CourseService;
import com.team.service.MajorService;
import com.team.service.StudentService;
import com.team.service.SwCService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Data 2021-12-30 16:29
 *
 * @author Liu_Yan
 */
@Controller
@RequestMapping("/course")
public class CourseController {

    //服务区域
    @Qualifier("studentService")
    private StudentService studentService;

    @Autowired
    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }

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

    @Qualifier("majorService")
    private MajorService majorService;

    @Autowired
    public void setMajorService(MajorService majorService) {
        this.majorService = majorService;
    }

    @RequestMapping("/chooseCourse")
    public String chooseCourse(int id, int cid) {
        swCService.elective(id, cid);
        return "forward:/student/studentIndex";
    }

    @RequestMapping("/removeCourse")
    public String removeCourse(int id, int cid) {
        if (courseService.whetherMust(cid)) {
            return "forward:/student/studentIndex";
        }
        swCService.removedCourse(id, cid);
        return "forward:/student/studentIndex";
    }

    @RequestMapping("/autoChoose")
    public String autoCourse(HttpServletRequest request) {
        int id = (int) request.getSession().getAttribute("userInfo");
        //现有的所有课程
        List<StudentWithCourse> list = swCService.selectCourseYouChoose(id);
        ArrayList<Course> yourHaveCourse = new ArrayList<>();
        for (StudentWithCourse course : list) {
            yourHaveCourse.add(course.getCourseId());
        }

        //查询你专业的所有必修课
        Student student = studentService.selectStudentById(id);
        Major major = majorService.selectMajorById(student.getMajor());
        String majorName = major.getName() + " 必修";
        List<Course> AllMust = courseService.SelectCourseByProperties(majorName);

        AllMust.removeAll(yourHaveCourse);
        for (Course course : AllMust) {
            swCService.elective(id, course.getId());
        }
        return "redirect:/student/studentIndex";
    }
}
