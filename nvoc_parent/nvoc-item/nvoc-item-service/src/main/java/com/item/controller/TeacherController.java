package com.item.controller;

import com.item.Teacher;
import com.item.service.TeacherService;
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
@RequestMapping(value = "/teacher")
@CrossOrigin
public class TeacherController extends BaseController<TeacherService, Teacher> {
}
