package com.javaweb.tzhu.dao.test;

import com.javaweb.tzhu.appcomm.BeansUtil;
import com.javaweb.tzhu.dao.CartDao;
import com.javaweb.tzhu.dto.CartFoodVo;
import com.javaweb.tzhu.entity.Cart;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class CartDaoImplTest {


    CartDao cartDao= BeansUtil.getBean("cartDao",CartDao.class);



    @Test
    public void add() {

        Cart cart = new Cart();

        cart.setUserid(10);
        cart.setFoodid(36);
        cart.setFoodcount(5);

        cartDao.add(cart);
    }

    @Test
    public void search() {


        List<CartFoodVo> cartList = cartDao.search(4);

        for (CartFoodVo cart : cartList) {

            System.out.println(cart.toString());

        }


    }
}