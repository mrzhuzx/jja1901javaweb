
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<div class="global-header">
    <div class="header-actions row">
        <div class="language-selector">
            <ul class="list-inline list-inline-divide">
                <li class="list-item selected">
                    <a class="list-item-target" href="#">中文 <i class="fa fa-caret-left icon"></i></a>

                </li>
                <li class="list-item"><a class="list-item-target" href="#">English <i
                        class="fa fa-caret-left icon"></i></a></li>
            </ul>
        </div>
        <div class="my-account-quicklinks">
            <ul class="list-inline list-inline-divide">

                <c:if test="${sessionScope.cus eq null}">

                <li class="list-item"><a class="list-item-target" href="jsp/mlslogin.jsp" data-toggle="modal"
                                         data-target="#signin">登录</a></li>
                <li class="list-item"><a class="list-item-target" href="#" data-toggle="modal"
                                         data-target="#signin">注册</a></li>
                </c:if>
                <c:if test="${sessionScope.cus ne null}">


                <li class="list-item"><a class="list-item-target" href="cus?op=loginout" data-toggle="modal"
                                         data-target="#trackOrder"> ${sessionScope.cus.customeremail}</a></li>
                <li class="list-item"><a class="list-item-target" href="jsp/zhuizongdiongdan.jsp" data-toggle="modal"
                                         data-target="#trackOrder">我的购物</a></li>
                </c:if>



            </ul>
        </div>
    </div>
    <div class="global-navbar navbar navbar-default" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand wos-brand" href="index.jsp">
                <img src="../img/mcdelivery_logo_zh.jpg" alt="McDelivery&amp;trade;">
            </a>
        </div>
        <div class="main-navigation clearfix">
            <ul class="nav navbar-nav">
                <li class="menu-item menu-item-menu">
                    <a class="menu-item-target" href="/jsp/caidanyinpin.jsp">
                        <i class="fa mcd mcd-burger icon"></i>
                        浏览菜单
                    </a>
                </li>
                <li class="menu-item menu-item-account dropdown">
                    <a class="menu-item-target dropdown-toggle" href="/jsp/zhanghushezhi.jsp" data-toggle="modal"
                       data-target="#signin">
                        <i class="fa fa-user icon"></i>
                        我的账户
                    </a>
                </li>


                <li class="menu-item menu-item-support">
                    <a class="menu-item-target" href="question.jsp">
                        <i class="fa fa-phone icon"></i>
                        帮助
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <!-- Start of Session time out warning -->

    <!-- End of Session time out warning -->
</div>
