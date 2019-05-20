package com.javaweb.tzhu.dao;

import com.javaweb.tzhu.entity.Food;

import java.util.List;

public interface FoodDao {


    public List<Food> search(Integer foodStyleId, Integer lunchId);


}
