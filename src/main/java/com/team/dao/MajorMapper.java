package com.team.dao;

import com.team.pojo.Major;

import java.util.List;

public interface MajorMapper {
    List<Major> selectAll();

    Major selectMajorById(int id);

    void insertMajor(Major major);

    void updateMajor(Major major);

    void deleteMajorById(int id);
}
