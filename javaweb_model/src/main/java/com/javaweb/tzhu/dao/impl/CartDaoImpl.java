package com.javaweb.tzhu.dao.impl;

import com.javaweb.tzhu.appcomm.JDBCRowMapperBuilder;
import com.javaweb.tzhu.dao.CartDao;
import com.javaweb.tzhu.dto.CartFoodVo;
import com.javaweb.tzhu.entity.Cart;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * springJDBC持久层实现
 * 购物车数据层设计
 */
@Repository(value = "cartDao") //注解DAO实现类
public class CartDaoImpl implements CartDao {

    @Resource(name = "jdbc")//jdbc
    JdbcTemplate jdbcTemplate;

    /**
     * 添加要购买的产品到购物中
     *
     * @param cart
     */
    public void add(Cart cart) {
        StringBuffer sb=new StringBuffer();

        sb.append(" insert into cart(userid,foodid,foodcount)  values(?,?,?) ");
        String sql=sb.toString();
        int rows = jdbcTemplate.update(sql, cart.getUserid(), cart.getFoodid(), cart.getFoodcount());
        System.out.println("rows :"+rows);
    }

    /**
     * 查询当前用户的购物列表
     *
     * @param userid
     * @return
     */
    public List<CartFoodVo> search(Integer userid) {


        //SELECT c.userId,c.cartId,c.foodId,c.foodCount,f.foodName,f.imagesPath from cart c LEFT JOIN food f ON c.foodId=f.foodId WHERE c.userId=4;

       // String sql="select * from cart ";//  注入攻击

        String sql="SELECT c.userId,c.cartId,c.foodId,c.foodCount,f.foodName,f.foodPrice,f.imagesPath from cart c LEFT JOIN food f ON c.foodId=f.foodId  ";
        if(userid>0){

            sql+="WHERE c.userId="+userid;
        }

        List<CartFoodVo> cartList = jdbcTemplate.query(sql, new JDBCRowMapperBuilder<CartFoodVo>(CartFoodVo.class));

        return cartList;
    }
}
