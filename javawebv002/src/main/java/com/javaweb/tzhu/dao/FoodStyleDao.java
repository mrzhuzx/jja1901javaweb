package com.javaweb.tzhu.dao;

import com.javaweb.tzhu.entity.Foodstyle;

import java.sql.SQLException;
import java.util.List;

public interface FoodStyleDao {

    /**
     * 查询所有的食物种类
     * @return
     */
    List<Foodstyle> findFoodStyle() throws SQLException;
}
