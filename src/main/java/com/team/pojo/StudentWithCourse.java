package com.team.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class StudentWithCourse{
    private Integer studentId;
    private Integer courseId;
    private Double grade;
}
