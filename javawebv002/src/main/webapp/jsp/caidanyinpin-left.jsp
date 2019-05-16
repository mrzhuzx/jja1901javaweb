<%--
  Created by IntelliJ IDEA.
  User: zxlal
  Date: 2019/5/15
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-sidebar">
    <div class="sidebar-menu" data-sticky="true">
        <div class="food-menu">
            <ul class="primary-menu">


                <li class="primary-menu-item selected"><a class="primary-menu-item-target"
                                                          href="/jsp/caidanyinpin.jsp"><span>正餐菜单</span><i
                        class="fa fa-angle-right"></i></a>
                    <ul class="secondary-menu">
                        <li class="secondary-menu-item "><a class="secondary-menu-item-target"
                                                            href="#"><i class="fa fa-circle"></i>
                            <span>促销产品和热卖产品</span></a></li>
                        <li class="secondary-menu-item "><a class="secondary-menu-item-target"
                                                            href="#"><i class="fa fa-circle"></i>
                            <span>主食和超值套餐</span></a></li>
                        <li class="secondary-menu-item "><a class="secondary-menu-item-target"
                                                            href="#"><i class="fa fa-circle"></i>
                            <span>小食</span></a></li>
                        <li class="secondary-menu-item "><a class="secondary-menu-item-target"
                                                            href="#"><i class="fa fa-circle"></i>
                            <span>甜品</span></a></li>
                        <li class="secondary-menu-item selected"><a class="secondary-menu-item-target"
                                                                    href="#"><i class="fa fa-circle"></i>
                            <span>饮品</span></a></li>
                        <li class="secondary-menu-item "><a class="secondary-menu-item-target"
                                                            href="#"><i class="fa fa-circle"></i>
                            <span>开心乐园餐</span></a></li>

                    </ul>
                </li>

                <li class="primary-menu-item"><a class="primary-menu-item-target" href="#"><span>早餐菜单</span><i
                        class="fa fa-angle-right"></i></a>

                </li>


            </ul>
        </div>


        <a href="#" class="h5 text-link" data-toggle="html-popover" data-container=".page-content"
           data-placement="right" data-html="true" data-content-selector="#menu-availability" data-original-title=""
           title=""><i class="mcd icon mcd-detail"></i> <span class="text-default">菜单供应时间</span></a>
        <div id="menu-availability" class="popover-wrapper popover-details">
            <div class="popover-wrapper">
                <table class="table-default table-menu-availability">
                    <thead>
                    <tr>
                        <th class="menu-type">早餐菜单</th>
                        <th class="menu-type">正餐菜单</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <div>5:00 AM - 10:30 AM</div>
                            <div class="last-order">(订单接受时间不迟于 10:15 AM)</div>
                        </td>
                        <td>
                            <div>10:30 AM - 5:00 AM</div>
                            <div class="last-order">(订单接受时间不迟于 4:45 AM)</div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>
