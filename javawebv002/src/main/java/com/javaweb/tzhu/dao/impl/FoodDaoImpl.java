package com.javaweb.tzhu.dao.impl;

import com.javaweb.tzhu.appcomm.BaseDaoMysql;
import com.javaweb.tzhu.dao.FoodDao;
import com.javaweb.tzhu.entity.Food;

import java.util.List;

public class FoodDaoImpl extends BaseDaoMysql<Food> implements FoodDao {


    @Override
    public List<Food> search(Integer foodStyleId, Integer lunchId) {

        StringBuffer sb = new StringBuffer();

        sb.append(" select * from food  where 1=1 ");
        if (foodStyleId > 0) {

            sb.append("  and  foodStyleId=" + foodStyleId);

        }
        if (lunchId > 0) {

            sb.append(" and lunchId=" + lunchId);
        }


        String sql = sb.toString();

        System.out.println(sql);
        return findList(Food.class, sql);

    }
}
