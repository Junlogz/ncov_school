package com.item.controller;

import com.item.po.Admin;
import com.item.service.AdminService;
import com.zjl.legou.core.controller.BaseController;
import io.swagger.annotations.ApiOperation;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 14:04
 */
@RestController
@RequestMapping(value = "/admin")
@CrossOrigin
@RefreshScope
public class AdminController extends BaseController<AdminService, Admin> {

    @ApiOperation(value="管理员查询根据isDelete", notes = "管理员查询根据isDelete")
    @GetMapping("/isDelete")
    public List<Admin> selectAdminByDel(){
        return service.selectAdminByDel();
    }


}
