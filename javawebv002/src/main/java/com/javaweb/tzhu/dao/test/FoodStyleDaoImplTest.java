package com.javaweb.tzhu.dao.test;

import com.javaweb.tzhu.dao.FoodStyleDao;
import com.javaweb.tzhu.dao.impl.FoodStyleDaoImpl;
import com.javaweb.tzhu.entity.FoodStyle;
import org.junit.jupiter.api.Test;

public class FoodStyleDaoImplTest {


    FoodStyleDao dao=new FoodStyleDaoImpl();
    @Test
    public void search() {


        for (FoodStyle style : dao.search()) {
            System.out.println(style.toString());
        }


    }
}