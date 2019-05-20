package com.javaweb.tzhu.dao.impl;

import com.javaweb.tzhu.appcomm.JDBCRowMapperBuilder;
import com.javaweb.tzhu.dao.AdmininfoDao;
import com.javaweb.tzhu.entity.Admininfo;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;


@Repository(value = "admininfoDao")
public class AdmininfoDaoImpl   implements AdmininfoDao {
    /**
     * BaseDaoMysql  工具类   new    实现类
     * JdbcTemplate 工具类
     */
    @Resource(name = "jdbc") // 注入了springJDBC  jdbc的实例
    JdbcTemplate  jdbcTemplate; //模板中方法的使用API

    /**
     * 后台管理登录
     *
     * @param adminName
     * @param adminPass
     * @return
     */
  
    public Admininfo login(String adminName, String adminPass) {
    String sql="select * from admininfo where adminName=? and adminPass=? ";
    String[]  args={adminName,adminPass};
  //      jdbcTemplate.query(sql,args, ResultSetExtractor<Admininfo>);

        Admininfo admininfo = jdbcTemplate.queryForObject(sql, new JDBCRowMapperBuilder<Admininfo>(Admininfo.class), new Object[]{adminName,adminPass});

        return  admininfo;

    }

    /**
     * 查询全部管理员
     *
     * @return
     */
  
    public List<Admininfo> search() {

        List<Admininfo> admininfoList = jdbcTemplate.query("select * from admininfo", new JDBCRowMapperBuilder<Admininfo>(Admininfo.class));

        return admininfoList;
    }

    /**
     * 后台开通新管理员账号
     *
     * @param ai
     */
  
    public void save(Admininfo ai) {

        String sql="insert into admininfo(adminName,adminPass,adminStyle,adminEmail) values(?,?,?,?) ";
        jdbcTemplate.update(sql,ai.getAdminName(),ai.getAdminPass(),ai.getAdminStyle(),ai.getAdminEmail());


    }

    /**
     * 修改管理员的状态，启用 禁用  密码
     *
     * @param ai
     */
  
    public void update(Admininfo ai) {

        jdbcTemplate.update(" update Admininfo set adminPass=? where adminId=?",ai.getAdminPass(),ai.getAdminId());


    }

}
