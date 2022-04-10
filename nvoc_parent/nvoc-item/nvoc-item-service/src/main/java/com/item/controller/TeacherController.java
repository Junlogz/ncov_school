package com.item.controller;

import com.item.po.Student;
import com.item.po.Teacher;
import com.item.service.TeacherService;
import com.zjl.legou.core.controller.BaseController;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 14:06
 */
@RestController
@RequestMapping(value = "/teacher")
@CrossOrigin
public class TeacherController extends BaseController<TeacherService, Teacher> {

    @ApiOperation(value="教师查询根据isDelete", notes = "教师查询根据isDelete")
    @GetMapping("/isDelete")
    public List<Teacher> selectTeacherByDel(){
        return service.selectTeacherByDel();
    }
}
