package com.nvoc.controller;

import com.nvoc.Student;
import com.nvoc.service.StudentService;
import com.zjl.legou.core.controller.BaseController;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 14:05
 */
@RestController
@RequestMapping("/student")
@CrossOrigin
public class StudentController extends BaseController<StudentService, Student> {
}
