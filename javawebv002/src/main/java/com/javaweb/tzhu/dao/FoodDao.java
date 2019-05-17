package com.javaweb.tzhu.dao;

import com.javaweb.tzhu.entity.Food;

import java.sql.SQLException;
import java.util.List;

public interface FoodDao {

    /**
     * 根据foodStyleId全查食物
     * @param foodStyleId   食物总类Id
     * @return
     * @throws SQLException
     */
    List<Food> findFoodByStyleId(Integer foodStyleId) throws SQLException;

    /**
     * 根据foodStyleId查询食物的记录数
     * @param foodStyleId   食物总类Id
     * @return
     */
    Integer findTotalCountByFood(Integer foodStyleId) throws SQLException;

    /**
     * 根据foodStyleId分页查询食物
     * @param foodStyleId   食物总类Id
     * @param startIndex    开始索引
     * @param pageSize      页面的数量
     * @return
     */
    List<Food> findFoodByPage(Integer foodStyleId,Integer startIndex,Integer pageSize) throws SQLException;
}
