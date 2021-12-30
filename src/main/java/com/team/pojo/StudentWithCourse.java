package com.team.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentWithCourse{
    private Student studentId;
    private Course courseId;
    private Double grade;
}
