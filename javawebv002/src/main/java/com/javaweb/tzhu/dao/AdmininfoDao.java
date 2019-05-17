package com.javaweb.tzhu.dao;

import com.javaweb.tzhu.entity.Admininfo;

import java.util.List;

public interface AdmininfoDao {

    /**
     * 后台管理登录
     * @return
     */
    public Admininfo  login(String  adminName,String adminPass);

    /**
     * 查询全部管理员
     * @return
     */
    public List<Admininfo> search();


    /**
     * 后台开通新管理员账号
     * @param ai
     */
    public  void  save(Admininfo  ai);

    /**
     * 修改管理员的状态，启用 禁用
     */
    public void update(Admininfo  ai);



}
