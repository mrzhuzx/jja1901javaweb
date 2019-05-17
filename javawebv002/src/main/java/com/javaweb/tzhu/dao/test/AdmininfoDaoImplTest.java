package com.javaweb.tzhu.dao.test;


import com.javaweb.tzhu.appcomm.BeansUtil;
import com.javaweb.tzhu.dao.AdmininfoDao;
import com.javaweb.tzhu.entity.Admininfo;
import org.junit.Test;
public class AdmininfoDaoImplTest {

    //  new AdmininfoDaoImpl()
    // IOC :将实例的控制权放到配置文件中
    AdmininfoDao  admininfoDao= BeansUtil.getBean("admininfoDao", AdmininfoDao.class);


    @Test
    public void search() {

        System.out.println(admininfoDao);

        for (Admininfo admininfo : admininfoDao.search()) {
            System.out.println(admininfo.toString());
        }

    }

}