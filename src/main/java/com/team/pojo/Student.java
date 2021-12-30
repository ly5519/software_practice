package com.team.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Student{
    private Integer id;
    private String name;
    private String sex;
    private Integer age;
    private String username;
    private String password;
    private Major major;
    private Date enrollment;
}