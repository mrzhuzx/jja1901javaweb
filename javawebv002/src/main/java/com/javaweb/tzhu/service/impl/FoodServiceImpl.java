package com.javaweb.tzhu.service.impl;

import com.javaweb.tzhu.dao.FoodDao;
import com.javaweb.tzhu.dao.impl.FoodDaoImpl;
import com.javaweb.tzhu.entity.Food;
import com.javaweb.tzhu.service.FoodService;
import com.javaweb.tzhu.utils.PageModel;
import com.javaweb.tzhu.web.IndexServlet;

import java.sql.SQLException;
import java.util.List;

public class FoodServiceImpl implements FoodService {

    FoodDao foodDao = new FoodDaoImpl();

    /**
     * 根据foodStyleId全查食物
     *
     * @param foodStyleId 食物总类Id
     * @return
     * @throws SQLException
     */
    public List<Food> findFoodByStyleId(Integer foodStyleId) throws SQLException {
        return foodDao.findFoodByStyleId(foodStyleId);
    }

    /**
     * 根据foodStyleId分页查询food
     *
     * @param foodStyleId 食物总类Id
     * @param pageNum     页码
     * @param pageSize    一页的数据量
     * @return
     */
    public PageModel findPageByFood(Integer foodStyleId, Integer pageNum, Integer pageSize) throws SQLException {
        Integer count = foodDao.findTotalCountByFood(foodStyleId);
        PageModel pageModel = new PageModel(pageNum,count,pageSize);
        List<Food> data = foodDao.findFoodByPage(foodStyleId,pageModel.getStartIndex(),pageModel.getPageSize());
        if(foodStyleId == 1){
            pageModel.setUrl("IndexServlet?method=execute");
        }else {
            pageModel.setUrl("FoodServlet?method=findFoodPageById&foodStyleId="+foodStyleId+"");
        }
        pageModel.setRecords(data);
        return pageModel;
    }

}
