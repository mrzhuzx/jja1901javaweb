package com.javaweb.tzhu.service;

import com.javaweb.tzhu.entity.Food;
import com.javaweb.tzhu.utils.PageModel;

import java.sql.SQLException;
import java.util.List;

public interface FoodService {
    /**
     * 根据foodStyleId全查食物
     * @param foodStyleId   食物总类Id
     * @return
     * @throws SQLException
     */
    List<Food> findFoodByStyleId(Integer foodStyleId) throws SQLException;

    /**
     * 根据foodStyleId分页查询food
     * @param foodStyleId   食物总类Id
     * @param startIndex    开始索引
     * @param pageSize      一页的数据量
     * @return
     */
    PageModel findPageByFood(Integer foodStyleId,Integer startIndex,Integer pageSize) throws SQLException;
}
