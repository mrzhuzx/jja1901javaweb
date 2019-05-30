package com.javaweb.tzhu.dao;

import com.javaweb.tzhu.dto.CartFoodVo;
import com.javaweb.tzhu.entity.Cart;

import java.util.List;

public interface CartDao {

    /**
     * 添加要购买的产品到购物中
     * @param cart
     */
    public void add(Cart   cart);

    /**
     * 查询当前用户的购物列表
     * @param userid
     * @return
     */
    public List<CartFoodVo>  search(Integer userid );

}
