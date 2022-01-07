package com.team.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Data 2022-01-02 13:09
 *
 * @author Liu_Yan
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SWC {
    private Integer student_id;
    private Integer course_id;
    private float grade;
}
