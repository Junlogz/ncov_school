package com.item.po;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.zjl.legou.core.po.BaseEntity;
import lombok.Data;

import java.util.Date;

@TableName("go_out_apply")
@Data
public class GoOutApply extends BaseEntity {
    /** 姓名 */
    private String name ;
    /** 电话 */
    private String phone ;
    /** 班级 */
    @TableField("class")
    private String class_ ;
    /** 离校原因 */
    private String reason ;
    /** 乘车安排 */
    private String busArrangement ;
    /** 目的地 */
    private String destination ;
    /** 离校时间 */
    private Date leaveTime ;
    /** 返校时间 */
    private Date returnTime ;
    /** 审批状态 */
    private int status ;
    /** 创建时间 */
    private Date createTime ;
    /** 修改时间 */
    private Date updateTime ;
}
