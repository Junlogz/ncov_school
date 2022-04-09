package com.nvoc.controller;

import com.nvoc.Teacher;
import com.nvoc.service.TeacherService;
import com.zjl.legou.core.controller.BaseController;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 14:06
 */
@RestController
@RequestMapping("/teacher")
@CrossOrigin
public class TeacherController extends BaseController<TeacherService, Teacher> {
}
