package com.javaweb.tzhu.dao.impl;

import com.javaweb.tzhu.appcomm.BaseDaoMysql;
import com.javaweb.tzhu.dao.FoodStyleDao;
import com.javaweb.tzhu.entity.FoodStyle;

import java.util.List;

/**
 * basedao springJDBC
 */
public class FoodStyleDaoImpl extends BaseDaoMysql<FoodStyle> implements FoodStyleDao {



    public List<FoodStyle> search() {
        return findList(FoodStyle.class," select * from  FoodStyle");
    }
}
