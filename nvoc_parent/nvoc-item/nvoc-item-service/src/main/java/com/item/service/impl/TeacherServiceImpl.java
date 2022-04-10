package com.item.service.impl;

import com.item.Teacher;
import com.item.service.TeacherService;
import com.zjl.legou.core.service.impl.CrudServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:53
 */
@Service("TeacherService")
public class TeacherServiceImpl extends CrudServiceImpl<Teacher> implements TeacherService {
}
