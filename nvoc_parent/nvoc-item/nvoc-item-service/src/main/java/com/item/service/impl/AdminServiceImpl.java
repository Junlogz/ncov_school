package com.item.service.impl;

import com.item.Admin;
import com.item.service.AdminService;
import com.zjl.legou.core.service.impl.CrudServiceImpl;
import org.springframework.stereotype.Service;

import java.io.Serializable;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:54
 */
@Service("AdminService")
public class AdminServiceImpl extends CrudServiceImpl<Admin> implements AdminService {

}
