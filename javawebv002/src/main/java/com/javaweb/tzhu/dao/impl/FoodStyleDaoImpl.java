package com.javaweb.tzhu.dao.impl;

import com.javaweb.tzhu.dao.FoodStyleDao;
import com.javaweb.tzhu.entity.Foodstyle;
import com.javaweb.tzhu.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

public class FoodStyleDaoImpl implements FoodStyleDao {

    /**
     * 查询所有的食物种类
     * @return
     */
    public List<Foodstyle> findFoodStyle() throws SQLException {
        QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
        String sql= "select * from foodstyle";
        List<Foodstyle> FSList = queryRunner.query(sql,new BeanListHandler<Foodstyle>(Foodstyle.class));
        return FSList;
    }
}
