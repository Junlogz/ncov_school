package com.item.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.zjl.legou.core.po.BaseEntity;

import java.util.Date;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 10:54
 */

public class HealthCardVo extends BaseEntity {

    /** 日期 */
    private Date date ;
    /** 姓名 */
    private String name ;
    /** 学院 */
    private String college ;
    /** 专业 */
    private String major ;
    /** 班级 */
    @TableField("class")
    private String class_ ;
    /** 电话 */
    private String phone ;
    /** 健康码 */
    private String healthCode ;
    /** 体温 */
    private String bodyTemperature ;
    /** 温度 */
    private double temperature ;
    /** 身体状况 */
    private String physicalCondition ;
    /** 接种疫苗 */
    private String vaccination ;
    /** 创建时间 */
    private Date createTime ;
    /** 修改时间 */
    private Date updateTime ;
    /** 逻辑删除 */
    private int is_delete ;
}
