package com.javaweb.tzhu.dao.impl;

import com.javaweb.tzhu.appcomm.BaseDaoMysql;
import com.javaweb.tzhu.dao.FoodDao;
import com.javaweb.tzhu.entity.Food;
import org.springframework.stereotype.Repository;

import java.util.List;


public class FoodDaoJDBCImpl extends BaseDaoMysql<Food> implements FoodDao {



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

    public List<Food> search(Integer foodStyleId, Integer lunchId, Integer pageNum, Integer pageSize) {

        StringBuffer sb = new StringBuffer();

        sb.append(" select * from food  where 1=1 ");
        if (foodStyleId > 0) {

            sb.append("  and  foodStyleId=" + foodStyleId);

        }
        if (lunchId > 0) {

            sb.append(" and lunchId=" + lunchId);
        }

    sb.append("  limit  "+((pageNum-1)*pageSize)+","+pageSize);

        String sql = sb.toString();

        System.out.println(sql);
        return findList(Food.class, sql);
    }

    /**
     * 查询产品分类
     *
     * @param foodStyleId
     * @return
     */
    public Integer count(Integer foodStyleId) {

        StringBuffer sql= new StringBuffer("SELECT count(*) as 'count' FROM food where 1=1 ");
        if(foodStyleId>0){
            sql.append(" and foodstyleid="+foodStyleId);
        }

        return   countAll(sql.toString());
    }
}
