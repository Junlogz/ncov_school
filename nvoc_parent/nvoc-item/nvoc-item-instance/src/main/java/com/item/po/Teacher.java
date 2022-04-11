package com.item.po;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.zjl.legou.core.po.BaseEntity;
import lombok.Data;

import java.util.Date;

@TableName("teacher")
@Data
public class Teacher extends BaseEntity {

    /** 教师编号 */
    private String teacherNumber ;
    /** 密码 */
    private String password ;
    /** 性别 */
    private int sex ;
    /** 电话 */
    private String phone ;
    /** 教师名 */
    private String name ;
    /** 创建时间 */
    private Date createTime ;
    /** 修改时间 */
    private Date updateTime ;
    /** 逻辑删除 */
    private int isDelete ;
    /** 启用状态 */
    private int status ;
}
