package com.item.dao;

import com.item.po.Admin;
import com.item.po.Student;
import com.zjl.legou.core.dao.ICrudDao;

import java.util.List;

/**
 * @author: JunLog
 * @Description: *
 * Date: 2022/4/9 11:27
 */
public interface AdminDao extends ICrudDao<Admin> {

    /**
     * 根据逻辑删除进行查询
     * @param id
     * @return
     */
    public List<Admin> selectAdminByDel();

}
