package com.item.service;

import com.item.po.Admin;
import com.item.po.Student;
import com.zjl.legou.core.service.ICrudService;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:50
 */
public interface AdminService extends ICrudService<Admin> {

    /**
     * 根据逻辑删除进行查询
     * @param id
     * @return
     */
    public List<Admin> selectAdminByDel();

}
