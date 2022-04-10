package com.item.service;

import com.item.po.Student;
import com.item.po.Teacher;
import com.zjl.legou.core.service.ICrudService;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:50
 */
public interface TeacherService extends ICrudService<Teacher> {
    /**
     * 根据逻辑删除进行查询
     * @param id
     * @return
     */
    public List<Teacher> selectTeacherByDel();
}
