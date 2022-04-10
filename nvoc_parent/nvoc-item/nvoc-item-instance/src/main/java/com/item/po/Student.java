package com.item.po;

import com.baomidou.mybatisplus.annotation.TableName;
import com.zjl.legou.core.po.BaseEntity;
import lombok.Data;

import java.util.Date;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 10:54
 */

@TableName("student")
@Data
public class Student extends BaseEntity {
    /** 学号 */
    private String student_number ;
    /** 密码 */
    private String password ;
    /** 盐值 */
    private String salt ;
    /** 性别 */
    private int sex ;
    /** 姓名 */
    private String name ;
    /** 电话 */
    private String phone ;
    /** 创建时间 */
    private Date createTime ;
    /** 修改时间 */
    private Date updateTime ;
    /** 逻辑删除 */
    private int is_delete ;
    /** 启用状态 */
    private int status ;
}
