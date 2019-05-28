package com.javaweb.tzhu.dao.impl;

import com.javaweb.tzhu.appcomm.JDBCRowMapperBuilder;
import com.javaweb.tzhu.dao.FoodDao;
import com.javaweb.tzhu.entity.Food;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;


@Repository("foodDao")
public class FoodDaoSpringJDBCImpl implements FoodDao {

    @Resource(name = "jdbc") // 注入了springJDBC  jdbc的实例
    JdbcTemplate jdbcTemplate; //模板中方法的使用API


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



        JDBCRowMapperBuilder<Food>  tableObj = new JDBCRowMapperBuilder<Food>(Food.class);
        List<Food> foodList = jdbcTemplate.query(sql, tableObj);

        return foodList;
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
        //分页 limit mysql数据库特有
          sb.append(" limit    "+((pageNum-1)*pageSize)+","+pageSize);
        String sql = sb.toString();

        System.out.println(sql);



        JDBCRowMapperBuilder<Food>  tableObj = new JDBCRowMapperBuilder<Food>(Food.class);
        List<Food> foodList = jdbcTemplate.query(sql, tableObj);

        return foodList;
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
        // 调用方法获得记录数
        Integer count = jdbcTemplate.queryForObject(sql.toString(), Integer.class);

        return count;
    }


}
