package com.item.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.item.po.Student;
import com.item.po.Teacher;
import com.item.service.TeacherService;
import com.zjl.legou.core.service.impl.CrudServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:53
 */
@Service("TeacherService")
public class TeacherServiceImpl extends CrudServiceImpl<Teacher> implements TeacherService {

    @Override
    public List<Teacher> selectTeacherByDel() {
        QueryWrapper<Teacher> queryWrapper = Wrappers.<Teacher>query().eq("is_Delete",0);
        return getBaseMapper().selectList(queryWrapper);
    }
}
