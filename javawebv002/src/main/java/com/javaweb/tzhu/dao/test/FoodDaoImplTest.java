package com.javaweb.tzhu.dao.test;

import com.javaweb.tzhu.dao.FoodDao;
import com.javaweb.tzhu.dao.impl.FoodDaoImpl;
import com.javaweb.tzhu.entity.Food;
import org.junit.jupiter.api.Test;

import java.util.List;

public class FoodDaoImplTest {

    FoodDao  dao=new FoodDaoImpl();



    @Test
    public void search() {


        List<Food> foodList = dao.search(0, 0);


        for (Food food : foodList) {



            System.out.println(food.toString());
        }


    }
}