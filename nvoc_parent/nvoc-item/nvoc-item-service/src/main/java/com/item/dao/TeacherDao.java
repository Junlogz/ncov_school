package com.item.dao;

import com.item.po.Student;
import com.item.po.Teacher;
import com.zjl.legou.core.dao.ICrudDao;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:26
 */
public interface TeacherDao extends ICrudDao<Teacher> {
    /**
     * 根据逻辑删除进行查询
     * @param id
     * @return
     */
    public List<Teacher> selectTeacherByDel();
}
