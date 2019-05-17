package com.javaweb.tzhu.dao.impl;

import com.javaweb.tzhu.dao.FoodDao;
import com.javaweb.tzhu.entity.Food;
import com.javaweb.tzhu.utils.JDBCUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.SQLException;
import java.util.List;

public class FoodDaoImpl implements FoodDao {

    /**
     * 根据foodStyleId全查食物
     * @param id
     * @return
     * @throws SQLException
     */
    public List<Food> findFoodByStyleId(Integer id) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from food where foodStyleId = ?";
        List<Food> FList = queryRunner.query(sql,new BeanListHandler<Food>(Food.class));
        return FList;
    }

    /**
     * 根据foodStyleId查询食物的记录数
     * @param foodStyleId   食物总类Id
     * @return
     */
    public Integer findTotalCountByFood(Integer foodStyleId) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select count(*) from food where foodStyleId=?";
        Long count = (Long) queryRunner.query(sql,new ScalarHandler<>(),foodStyleId);
        return count.intValue();
    }

    /**
     * 根据foodStyleId分页查询食物
     * @param foodStyleId   食物总类Id
     * @param startIndex    开始索引
     * @param pageSize      页面的数量
     * @return
     */
    public List<Food> findFoodByPage(Integer foodStyleId, Integer startIndex, Integer pageSize) throws SQLException {
        QueryRunner queryRunner = new QueryRunner(JDBCUtils.getDataSource());
        String sql = "select * from food where foodStyleId=? order by foodId asc limit ?,?";
        List<Food> FList = queryRunner.query(sql,new BeanListHandler<Food>(Food.class),foodStyleId,startIndex,pageSize);
        return FList;
    }


}
