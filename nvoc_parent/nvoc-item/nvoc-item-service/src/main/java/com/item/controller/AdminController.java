package com.item.controller;

import com.item.Admin;
import com.item.service.AdminService;
import com.zjl.legou.core.controller.BaseController;
import org.springframework.web.bind.annotation.*;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 14:04
 */
@RestController
@RequestMapping(value = "/admin")
@CrossOrigin
public class AdminController extends BaseController<AdminService, Admin> {
}