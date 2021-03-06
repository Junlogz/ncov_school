package com.item.controller;

import com.item.po.HealthCard;
import com.item.service.HealthCardService;
import com.zjl.legou.core.controller.BaseController;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 14:06
 */
@RestController
@RequestMapping(value = "/healthCard")
@CrossOrigin
@RefreshScope
public class HealthCardController extends BaseController<HealthCardService, HealthCard> {
}
