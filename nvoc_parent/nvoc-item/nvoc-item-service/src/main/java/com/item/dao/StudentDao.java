package com.item.dao;

import com.item.po.Student;
import com.zjl.legou.core.dao.ICrudDao;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:13
 */
public interface StudentDao extends ICrudDao<Student> {

    /**
     * 根据逻辑删除进行查询
     * @param id
     * @return
     */
    public List<Student> selectStudentByDel();

    /**
     * 根据姓名模糊查询
     * @param name
     * @return
     */
    public List<Student> selectStudentLikeName(String name);

    /**
     * 修改启用状态
     * @param id
     */
    public int updateStatus(Student student,Long id, Integer status);
}
