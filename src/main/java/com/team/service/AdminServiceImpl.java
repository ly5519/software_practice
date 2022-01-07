package com.team.service;

import com.team.dao.AdminMapper;
import com.team.dao.SwCMapper;
import com.team.pojo.Admin;
import com.team.pojo.SWC;
import com.team.pojo.StudentWithCourse;

import java.util.List;

/**
 * Data 2022-01-02 13:13
 *
 * @author Liu_Yan
 */
public class AdminServiceImpl implements AdminService {
    private AdminMapper adminMapper;
    private SwCMapper swCMapper;

    public void setSwCMapper(SwCMapper swCMapper) {
        this.swCMapper = swCMapper;
    }

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public Admin getAdminByUsername(String username) {
        return adminMapper.selectAdminByUsername(username);
    }

    @Override
    public boolean thePasswordTrue(String user, String password) {
        Admin admin = adminMapper.selectAdminByUsername(user);
        return password.equals(admin.getPassword());
    }

    @Override
    public List<StudentWithCourse> getGradeByCourseId(int course_id) {
        return swCMapper.selectSWCByCId(course_id);
    }

    @Override
    public StudentWithCourse getOneSWC(int course_id, int student_id) {
        return swCMapper.selectCourseYouChooseType(student_id, course_id);
    }

    @Override
    public void updateGrade(SWC swc) {
        adminMapper.updateSWC(swc);
    }
}
