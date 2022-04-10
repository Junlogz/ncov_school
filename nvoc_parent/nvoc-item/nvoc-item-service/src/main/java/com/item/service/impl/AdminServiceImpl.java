package com.item.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.item.po.Admin;
import com.item.po.Student;
import com.item.service.AdminService;
import com.zjl.legou.core.service.impl.CrudServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:54
 */
@Service("AdminService")
public class AdminServiceImpl extends CrudServiceImpl<Admin> implements AdminService {

    @Override
    public List<Admin> selectAdminByDel() {
        QueryWrapper<Admin> queryWrapper = Wrappers.<Admin>query().eq("is_Delete",0);
        return getBaseMapper().selectList(queryWrapper);
    }

}
