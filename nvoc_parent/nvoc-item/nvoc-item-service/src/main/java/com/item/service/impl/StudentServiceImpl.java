package com.item.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.item.po.Student;
import com.item.service.StudentService;
import com.zjl.legou.core.service.impl.CrudServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:52
 */
@Service("StudentService")
public class StudentServiceImpl extends CrudServiceImpl<Student> implements StudentService {

    @Override
    public List<Student> selectStudentByDel() {
        QueryWrapper<Student> queryWrapper = Wrappers.<Student>query().eq("is_Delete",0);
        return getBaseMapper().selectList(queryWrapper);
    }

    @Override
    public List<Student> selectStudentLikeName(String name) {
        QueryWrapper<Student> queryWrapper = Wrappers.<Student> query().like("name", name);
        return getBaseMapper().selectList(queryWrapper);
    }

    @Override
    public int updateStatus(Student student, Long id, Integer status) {
        UpdateWrapper<Student> updateWrapper = Wrappers.<Student>update().eq("id",id)
                .set("status",status==0?1:0);
        return getBaseMapper().update(student, updateWrapper);
    }

}
