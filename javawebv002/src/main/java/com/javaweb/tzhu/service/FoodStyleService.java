package com.javaweb.tzhu.service;

import com.javaweb.tzhu.entity.Foodstyle;

import java.sql.SQLException;
import java.util.List;

public interface FoodStyleService {
    /**
     * 查询所有的食物种类
     * @return
     */
    List<Foodstyle> findFoodStyle() throws SQLException;
}
