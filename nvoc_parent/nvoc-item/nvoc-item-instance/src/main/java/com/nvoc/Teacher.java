package com.nvoc;

import com.baomidou.mybatisplus.annotation.TableName;
import com.zjl.legou.core.po.BaseEntity;

import java.util.Date;

@TableName("teacher")
public class Teacher extends BaseEntity {

    /** 教师编号 */
    private String teacher_number ;
    /** 密码 */
    private String password ;
    /** 盐值 */
    private String salt ;
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
    private int is_delete ;
    /** 启用状态 */
    private int status ;
}
