package com.javaweb.tzhu.dao;

import com.javaweb.tzhu.appcomm.BeansUtil;
import com.javaweb.tzhu.dao.impl.FoodDaoSpringJDBCImpl;
import com.javaweb.tzhu.entity.Food;
import org.junit.Test;

import java.util.List;

public class FoodDaoSpringJDBCImplTest {

    FoodDao  dao= BeansUtil.getBean("foodDao", FoodDaoSpringJDBCImpl.class);

    @Test
    public void search() {

      //  List<Food> foodList = dao.search(0, 0, 1, 6);
       // List<Food> foodList = dao.search(0, 0, 2, 6);
        List<Food> foodList = dao.search(5, 0, 1, 6);

        for (Food food : foodList) {

            System.out.println(food.toString());
        }


    }
}