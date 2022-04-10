package com.item.service.impl;

import com.item.po.Student;
import com.item.service.StudentService;
import com.zjl.legou.core.service.impl.CrudServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:52
 */
@Service("StudentService")
public class StudentServiceImpl extends CrudServiceImpl<Student> implements StudentService {
}
