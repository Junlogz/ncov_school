package com.item;

import com.baomidou.mybatisplus.annotation.TableName;
import com.zjl.legou.core.po.BaseEntity;

import java.util.Date;

@TableName("admin")
public class Admin extends BaseEntity {

    /** 用户名 */
    private String username ;
    /** 密码 */
    private String password ;
    /** 创建时间 */
    private Date createTime ;
    /** 修改时间 */
    private Date updateTime ;
    /** 逻辑删除 */
    private int is_delete ;
    /** 状态 */
    private int status ;
}
