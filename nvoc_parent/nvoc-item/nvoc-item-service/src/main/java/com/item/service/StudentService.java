package com.item.service;

import com.item.po.Student;
import com.zjl.legou.core.service.ICrudService;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:44
 */
public interface StudentService extends ICrudService<Student> {
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
     * @param status
     * @return
     */
    public int updateStatus(Student student, Long id, Integer status);
}
