package com.zjl.legou.core.po;

import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

/**
 * 树状结构实体类父类
 */
@Data
@JsonIgnoreProperties(value = {"handler"}) //避免懒加载，json转换报错
public class BaseTreeEntity extends BaseEntity {

    @TableField("order_")
    private Integer order; //排序字段
    @TableField("parent_id_")
    private Long parentId; //父节点id
    @TableField("title_")
    private String title; //节点名称
    @TableField("expand_")
    private Boolean expand = false; //是否展开节点

}
