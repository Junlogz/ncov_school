package com.nvoc.controller;

import com.nvoc.GoOutApply;
import com.nvoc.service.GoOutApplyService;
import com.zjl.legou.core.controller.BaseController;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 14:07
 */
@RestController
@RequestMapping("/goOutApp")
@CrossOrigin
public class GoOurApplyController extends BaseController<GoOutApplyService, GoOutApply> {
}
