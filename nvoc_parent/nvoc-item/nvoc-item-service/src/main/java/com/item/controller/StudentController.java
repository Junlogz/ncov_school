package com.item.controller;

import com.item.po.Student;
import com.item.service.StudentService;
import com.zjl.legou.core.controller.BaseController;
import com.zjl.legou.core.po.ResponseBean;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 14:05
 */
@RestController
@RequestMapping(value = "/student")
@CrossOrigin
public class StudentController extends BaseController<StudentService, Student> {

    @ApiOperation(value="学生查询根据isDelete", notes = "学生查询根据isDelete")
    @GetMapping("/isDelete")
    public List<Student> selectStudentByDel(){
        return service.selectStudentByDel();
    }

    @ApiOperation(value="学生根据name模糊查询", notes = "学生根据name模糊查询")
    @PostMapping("/like")
    public List<Student> selectStudentLikeName(@RequestParam("name") String name){
        return service.selectStudentLikeName(name);
    }

    @ApiOperation(value="学生启用状态修改", notes = "学生启用状态修改")
    @PostMapping("/updateStatus")
    public ResponseBean updateStatus(@RequestParam("status") Integer status){
        ResponseBean rm = new ResponseBean();
        Student student = new Student();
        Long id = student.getId();
        try {
            service.updateStatus(student,id,status);
        } catch (Exception e) {
            e.printStackTrace();
            rm.setSuccess(false);
            rm.setMsg("修改失败");
        }
        return rm;
    }

}
