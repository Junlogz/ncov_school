package com.item.service.impl;

import com.item.HealthCard;
import com.item.service.HealthCardService;
import com.zjl.legou.core.service.impl.CrudServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:55
 */
@Service("HealthCardService")
public class HealthCardServiceImpl extends CrudServiceImpl<HealthCard> implements HealthCardService {
}
