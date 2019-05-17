package com.javaweb.tzhu.service.impl;

import com.javaweb.tzhu.dao.FoodStyleDao;
import com.javaweb.tzhu.dao.impl.FoodStyleDaoImpl;
import com.javaweb.tzhu.entity.Foodstyle;
import com.javaweb.tzhu.service.FoodStyleService;

import java.sql.SQLException;
import java.util.List;

public class FoodStyleServiceImpl implements FoodStyleService {
    FoodStyleDao foodStyleDao = new FoodStyleDaoImpl();
    /**
     * 查询所有的食物种类
     * @return
     */
    public List<Foodstyle> findFoodStyle() throws SQLException {
        return foodStyleDao.findFoodStyle();
    }
}
