package com.nvoc.controller;

import com.nvoc.Admin;
import com.nvoc.service.AdminService;
import com.zjl.legou.core.controller.BaseController;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 14:04
 */
@RestController
@RequestMapping("/admin")
@CrossOrigin
public class AdminController extends BaseController<AdminService, Admin> {
}
