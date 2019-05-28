package com.javaweb.tzhu.dao;

import com.javaweb.tzhu.entity.Food;

import java.util.List;

/**
 *  功能说明：
 *  作者：
 *  时间：
 *  版本：
 *
 */
public interface FoodDao {

    /**
     * 查询分类下的全部产品信息
     * @param foodStyleId
     * @param lunchId
     * @return
     */
    public List<Food> search(Integer foodStyleId, Integer lunchId);

    /**
     * 查询产品带分页
     * @param foodStyleId
     * @param lunchId
     * @param pageNum
     * @param pageSize
     * @return
     */
    public List<Food> search(Integer foodStyleId, Integer lunchId,Integer pageNum,Integer pageSize);

    /**
     * 查询产品分类
     * @param foodStyleId
     * @return
     */
    public  Integer  count(Integer foodStyleId);


}
