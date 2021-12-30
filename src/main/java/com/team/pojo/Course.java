package com.team.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Course{

    private Integer id;

    private String name;

    private Integer period;

    private Double credit;

    private String detail;

    private String properties;

    private Integer capacity;

    private Integer selected;

    private String examType;

}