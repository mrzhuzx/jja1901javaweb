
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="" class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms no-csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths no-ieolderthan9">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache,no-Store">
    <title>麦当劳网上订餐 | 麦乐送</title>
    <meta name="description" content="">

    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/local.css">



    <script type="text/javascript" async src="../js/ga.js"></script><script type="text/javascript" src="../js/jquery.min.js"></script>


    <script type="text/javascript" src="../js/modernizr.min.js"></script>



    <script type="text/javascript"> </script>


    <script type="text/javascript">var _gaq = _gaq || [];_gaq.push(['_setAccount', 'UA-24138769-1']);_gaq.push(['_trackPageview']);(function(){var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);})();</script>


</head>
<body class="country-86 lang-zh " style="">



<script type="text/javascript"></script>

<div class="root">
    <div class="wrap container">
        <div class="global-header">
            <div class="header-actions row">
                <div class="language-selector">
                    <ul class="list-inline list-inline-divide">
                        <li class="list-item selected">
                            <a class="list-item-target" href="#">中文 <i class="fa fa-caret-left icon"></i></a>

                        </li>
                        <li class="list-item"><a class="list-item-target" href="#">English <i class="fa fa-caret-left icon"></i></a></li>
                    </ul>
                </div>
                <div class="my-account-quicklinks">
                    <ul class="list-inline list-inline-divide">


                        <li class="list-item">欢迎回来  陶然</li>




                        <li class="list-item">
                            <a class="list-item-target" href="index.jsp">退出</a>
                        </li>


                        <li class="list-item"><a class="list-item-target" href="zhuizongdingdan.jsp" data-toggle="modal" data-target="#trackOrder">追踪订单</a></li>
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
                            <a class="menu-item-target" href="caidanyinpin.jsp">
                                <i class="fa mcd mcd-burger icon"></i>
                                浏览菜单
                            </a>
                        </li>



                        <li class="menu-item menu-item-account dropdown">
                            <a class="menu-item-target dropdown-toggle" href="zhanghushezhi.jsp" data-toggle="dropdown">
                                <i class="fa fa-user icon"></i>
                                我的账户
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-menu-item">
                                    <a class="dropdown-menu-item-target" href="zhuizongdingdan.jsp" data-toggle="modal">追踪订单</a>

                                </li>
                                <li class="dropdown-menu-item">
                                    <a class="dropdown-menu-item-target" href="dingcanjilu.jsp">订餐记录</a>
                                </li>

                                <li class="dropdown-menu-item">
                                    <a class="dropdown-menu-item-target" href="address.htm">地址簿</a>
                                </li>
                                <li class="dropdown-menu-item">
                                    <a class="dropdown-menu-item-target" href="zhanghushezhi.jsp">账户设置</a>
                                </li>
                            </ul>
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


            <div class="alert alert-warning alert-dismissable inline-alert type-flama hidden" data-content-timer="60000" data-delay-show="900000">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true"><i class="fa mcd mcd-close"></i></button>
                <p><i class="fa fa-exclamation text-white icon"></i>请在<span data-countdown-redirect-url="/cn/expireSession.jsp" data-countdown-time="900" class="text-primary timer"></span>内提交订单，以免购物车清空。加油哦！</p>
            </div>

        </div>
        <div class="main" role="main">
            <div class="row row-narrow">
                <div class="page-sidebar">
                    <div class="sidebar-menu">
                        <h2 class="menu-category">我的账户</h2>
                        <ul class="menu">
                            <li class="menu-item"><a class="menu-item-target" href="zuizongdingdan.jsp">追踪订单</a></li>
                            <li class="menu-item"><a class="menu-item-target" href="dingcanjilu.jsp">订餐记录</a></li>
                            <li class="menu-item"><a class="menu-item-target" href="wodeshoucang.jsp">我的收藏</a></li>
                            <li class="menu-item selected"><a class="menu-item-target" href="address.jsp">地址簿</a></li>
                            <li class="menu-item"><a class="menu-item-target" href="zhanghushezhi.jsp">账户设置</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-xs-10 type-flama">
                    <div class="page-title">
                        <h1>地址簿</h1>
                    </div>
                    <div class="page-content">

                        <table class="table-default table-panel table-addressbook">
                            <thead>
                            <tr>
                                <th scope="colgroup" colspan="2"><h3>送餐地址</h3></th>
                                <th scope="col"><h3>特殊要求</h3></th>
                                <th scope="col"></th>
                            </tr>



                            </thead>
                            <tfoot>
                            <tr><td colspan="4" class="actions">




                                <a href="address.jsp" data-toggle="modal" class="btn btn-red btn-lg">添加新地址</a>

                                <a class="btn btn-red btn-lg" href="caidanyinpin.jsp">立即订餐</a>
                            </td>
                            </tr></tfoot>
                            <tbody>
                            <tr>
                                <td class="address-number">1</td>
                                <td class="address-details">
                                    <div>厦门市 思明区 湖滨中路557号  国贸春天 1号楼 2层 2室</div>

                                </td>
                                <td class="special-instructions">送到保卫处</td>
                                <td class="controls">
                                    <a class="text-gray-light" href="gerexinxi.jsp" title="修改"><i class="fa mcd mcd-edit icon"></i></a>

                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="global-footer">
        <div class="footer-nav">
            <div class="container">
                <div class="row">



                    <div class="column">
                        <h3 class="list-group-title">浏览菜单</h3>
                        <ul class="list-unstyled">
                            <li class="menu-item">
                                <a class="menu-item-target" href="zhengcancuxiao.jsp">促销产品和热卖产品</a>


                            </li>
                            <li class="menu-item">
                                <a class="menu-item-target" href="zhengcanzhushi.jsp">主食和超值套餐</a>


                            </li>
                            <li class="menu-item">
                                <a class="menu-item-target" href="zhengcanxiaoshi.jsp">小食</a>


                            </li>
                            <li class="menu-item">
                                <a class="menu-item-target" href="zhengcantiandian.jsp">甜品</a>


                            </li>
                            <li class="menu-item">
                                <a class="menu-item-target" href="caidanyinpin.jsp">饮品</a>


                            </li>
                            <li class="menu-item">
                                <a class="menu-item-target" href="zhengcankaixinleyuan.jsp">开心乐园餐</a>


                            </li>

                        </ul>
                    </div>


                    <div class="column">
                        <h3 class="list-group-title">我的账户</h3>





                        <ul class="list-unstyled">
                            <li class="menu-item"><a class="menu-item-target" href="zhuizongdingdan.jsp" data-toggle="modal">追踪订单</a></li>

                            <li class="menu-item"><a class="menu-item-target" href="dingcanjilu.jsp">订餐记录</a></li>

                            <li class="menu-item"><a class="menu-item-target" href="address.jsp">地址簿</a></li>
                            <li class="menu-item"><a class="menu-item-target" href="zhanghushezhi.jsp">账户设置</a></li>
                        </ul>


                    </div>

                    <div class="column">
                        <h3 class="list-group-title">帮助</h3>
                        <ul class="list-unstyled">
                            <li class="menu-item">



                                <a class="menu-item-target" href="wanzhantiaokuan.jsp" target="_self">网站条款</a>



                            </li>
                            <li class="menu-item">



                                <a class="menu-item-target" href="yisitiaokuan.jsp" target="_self">隐私政策</a>



                            </li>
                            <li class="menu-item">



                                <a class="menu-item-target" href="dicanxuzhi.jsp" target="_self">订餐须知</a>



                            </li>
                            <li class="menu-item">



                                <a class="menu-item-target" href="question.jsp" target="_self">常见问题</a>



                            </li>
                            <li class="menu-item">



                                <a class="menu-item-target" href="30fen.jsp" target="_self">关于30分钟必达</a>



                            </li>
                            <li class="menu-item">


                                <a class="menu-item-target" href="phone.jsp" target="_self">手机网站</a>




                            </li>
                        </ul>
                    </div>

                    <div class="column">
                        <h3 class="list-group-title">关注我们</h3>
                        <ul class="list-unstyled">

                            <li class="menu-item">




                                <a class="menu-item-target footer-icon wb" href="#" target="_blank">新浪微博</a>

                            </li>

                            <li class="menu-item">





                                <a class="menu-item-target footer-icon wc" href="#" target="_blank">微信</a>
                            </li>

                        </ul>
                    </div>


                </div>
            </div>
        </div>
        <div class="footer-disclaimer">
            <div class="container">
                <div class="text-center"></div>
                <div class="text-center text-ucase">德邦制作  QQ：888888   phone：1388888888</div>
                <div class="text-center text-ucase">巨人的心胸可见，匠者的智慧无限</div>
            </div>
        </div>

        <div style="display:none">
            Store Number:S1410088<br>:NpVersion: 6.1<br>Store Status:<br>1
        </div>

    </div>

</div>
<div id="loading-view" class="loading-view hidden"><div class="loading"><span class="loading-icon"></span></div></div>



<div id="alertAddBookEmpty" data-backdrop="static" data-keyboard="false" class="modal-addressbookempty modal-alert modal fade" role="dialog" aria-labelledby="addressbookempty-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="addressbookempty-title">地址簿是空的。</h1>
            </div>
            <div class="modal-body">
                <div class="alert-content">
                    <p>添加送餐地址，开始订餐吧！</p>
                    <p><a class="btn btn-default btn-red btn-lg text-ucase" href="address.jsp">添加送餐地址</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="signin" class="modal-login modal fade" role="dialog" aria-labelledby="modal-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <img class="logo" src="../img/mcdelivery_logo_zh.jpg" alt="">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    <i class="fa mcd mcd-close"></i>
                </button>
            </div>
            <div class="modal-body">
                <h2 id="modal-title">欢迎，登陆后开始订餐</h2>
                <div class="row">
                    <div class="col-xs-offset-3 col-xs-6">
                        <form action="https://www.4008-517-517.cn/cn/login.jsp" method="post" accept-charset="utf-8" role="form" id="form_login_modal" name="form_login_modal" class="form-login-modal form-login" data-required-symbol="false" novalidate>
                            <fieldset class="form-credentials">
                                <div class="list-group textfield-list-group">
                                    <div class="list-group-item textfield-list-group-item">
                                        <label class="sr-only" for="form_login_modal_username">邮箱</label>
                                        <input type="text" name="userName" id="form_login_modal_username" class="required email list-group-form-control" placeholder="邮箱" autocomplete="off" value="" aria-required="true">
                                    </div>
                                    <div class="list-group-item textfield-list-group-item">
                                        <label class="sr-only" for="form_login_modal_password">密码</label>
                                        <input type="password" name="password" id="form_login_modal_password" class="required list-group-form-control" placeholder="密码" autocomplete="off" value="" aria-required="true">
                                    </div>
                                </div>

                                <div class="checkbox">
                                    <div class="icheckbox" style="position: relative;"><input type="checkbox" name="rememberMe" id="modal_login_rememberme" value="true" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); border: 0px; opacity: 0; background-position: initial initial; background-repeat: initial initial;"></ins></div><input type="hidden" name="_rememberMe" value="on">
                                    <label for="modal_login_rememberme" class="checkbox-label">下次自动登录</label>
                                </div>
                            </fieldset>
                            <fieldset class="form-actions">
                                <button type="submit" class="btn btn-default btn-red btn-block btn-xl btn-submit">登录</button>
                                <p class="action-forgot-password">
                                    <a class="action-link" href="wangjimima.jsp">忘记密码？</a>
                                </p>
                                <hr class="fading-divider">
                                <a class="action-link" href="addresslogin.jsp">
                                    <p class="header-new-customer">新用户</p>
                                    <p class="action-check-address">
                                        <span> <i class="fa fa-caret-right"></i> 请输入您的送餐地址</span>
                                    </p>
                                </a>
                            </fieldset>
                            <input type="hidden" name="csrfValue" value="998F500"></form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="deliveryOptions" data-backdrop="static" class="modal-deliveryoptions modal fade" role="dialog" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa mcd mcd-close"></i></button>
            </div>
            <div class="modal-body">
                <form action="https://www.4008-517-517.cn/cn/selection/menu.jsp" method="post" role="form" class="form form_deliveryoptions" id="form_deliveryoptions" data-required-symbol="*">
                    <fieldset class="fieldset fieldset-deliveryaddress">
                        <div class="fieldset-heading">
                            <h2>请选择送餐地址</h2>
                        </div>
                        <div class="form-group">
                            <select class="hide-default-error" name="address" id="form_deliveryoptions_address" aria-disabled="false" tabindex="0" style="display: none;">
                                <option value="1">厦门市 思明区 湖滨中路557号  国贸春天 1号楼 2层 2室</option>
                            </select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_address-button" role="button" href="#" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_address-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">厦门市 思明区 湖滨中路557号  国贸春天 1号楼 2层 2室</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>




                            <a href="address.jsp" class="action-secondary action-link"><i class="fa fa-caret-right"></i> 添加送餐地址</a>



                        </div>
                        <p class="note address-status"></p>
                    </fieldset>
                    <fieldset class="fieldset fieldset-deliverydatetime">
                        <div class="fieldset-heading">
                            <h2>请选择送餐日期和时间</h2>
                        </div>
                        <div class="form-group">
                            <div class="radio">
                                <div class="iradio" style="position: relative;"><input type="radio" value="now" name="form_deliveryoptions_datetime" id="form_deliveryoptions_datetime_now" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); border: 0px; opacity: 0; background-position: initial initial; background-repeat: initial initial;"></ins></div>
                                <label class="radio-label" for="form_deliveryoptions_datetime_now">立即订餐</label>
                            </div>
                            <div class="radio">
                                <div class="iradio" style="position: relative;"><input type="radio" value="later" name="form_deliveryoptions_datetime" id="form_deliveryoptions_datetime_later" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); border: 0px; opacity: 0; background-position: initial initial; background-repeat: initial initial;"></ins></div>
                                <label class="radio-label" for="form_deliveryoptions_datetime_later">预约订餐（至少提前1小时预约）</label>
                            </div>
                            <div class="form-group deliverydatetime">
                                <label class="field-label overlay-sub-label">日期:</label>

                                <select class="hide-default-error" name="date" id="form_deliveryoptions_date" aria-disabled="false" tabindex="0" style="display: none;">
                                    <option value="2014/12/24">2014/12/24</option>
                                    <option value="2014/12/25">2014/12/25</option>
                                    <option value="2014/12/26">2014/12/26</option>
                                    <option value="2014/12/27">2014/12/27</option>
                                    <option value="2014/12/28">2014/12/28</option>
                                    <option value="2014/12/29">2014/12/29</option>
                                    <option value="2014/12/30">2014/12/30</option>
                                    <option value="2014/12/31">2014/12/31</option>
                                </select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_date-button" role="button" href="#" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_date-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">2014/12/24</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>

                            </div>
                            <div class="form-group deliverydatetime">
                                <label class="field-label overlay-sub-label">时间:</label>

                                <select class="hide-default-error" name="time" id="form_deliveryoptions_time" aria-disabled="false" tabindex="0" style="display: none;">
                                    <option value="">请选择送餐时间</option>
                                    <option value="11:45">11:45</option>
                                    <option value="12:00">12:00</option>
                                    <option value="12:15">12:15</option>
                                    <option value="12:30">12:30</option>
                                    <option value="12:45">12:45</option>
                                    <option value="13:00">13:00</option>
                                    <option value="13:15">13:15</option>
                                    <option value="13:30">13:30</option>
                                    <option value="13:45">13:45</option>
                                    <option value="14:00">14:00</option>
                                    <option value="14:15">14:15</option>
                                    <option value="14:30">14:30</option>
                                    <option value="14:45">14:45</option>
                                    <option value="15:00">15:00</option>
                                    <option value="15:15">15:15</option>
                                    <option value="15:30">15:30</option>
                                    <option value="15:45">15:45</option>
                                    <option value="16:00">16:00</option>
                                    <option value="16:15">16:15</option>
                                    <option value="16:30">16:30</option>
                                    <option value="16:45">16:45</option>
                                    <option value="17:00">17:00</option>
                                    <option value="17:15">17:15</option>
                                    <option value="17:30">17:30</option>
                                    <option value="17:45">17:45</option>
                                    <option value="18:00">18:00</option>
                                    <option value="18:15">18:15</option>
                                    <option value="18:30">18:30</option>
                                    <option value="18:45">18:45</option>
                                    <option value="19:00">19:00</option>
                                    <option value="19:15">19:15</option>
                                    <option value="19:30">19:30</option>
                                    <option value="19:45">19:45</option>
                                    <option value="20:00">20:00</option>
                                    <option value="20:15">20:15</option>
                                    <option value="20:30">20:30</option>
                                    <option value="20:45">20:45</option>
                                    <option value="21:00">21:00</option>
                                    <option value="21:15">21:15</option>
                                    <option value="21:30">21:30</option>
                                    <option value="21:45">21:45</option>
                                    <option value="22:00">22:00</option>
                                    <option value="22:15">22:15</option>
                                    <option value="22:30">22:30</option>
                                    <option value="22:45">22:45</option>
                                    <option value="23:00">23:00</option>
                                    <option value="23:15">23:15</option>
                                    <option value="23:30">23:30</option>
                                    <option value="23:45">23:45</option>
                                </select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_time-button" role="button" href="#" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_time-menu" aria-disabled="false" style="width: 102px;"><span class="ui-selectmenu-status">请选择送餐时间</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
                            </div>
                            <div class="deliverydatetime deliverydatetime-status"></div>
                        </div>
                    </fieldset>
                    <fieldset class="fieldset form-actions">
                        <div class="form-group">
                            <button type="submit" class="btn btn-red btn-xl btn-submit">下一步</button>
                        </div>
                    </fieldset>
                    <fieldset class="fieldset footnotes">
                        <div class="note">任何提前999,999天的预约订单，请致电麦乐送 4008-517-517。</div>
                        <div class="note">预约订餐 - 任何提前null天的预约订单，请致电麦乐送4008-517-517。</div>
                        <div class="note">天气原因 - 送餐时间会受您所在地区的天气影响。</div>
                        <div class="note"></div>
                        <div class="note"></div>
                    </fieldset>
                    <input type="hidden" name="csrfValue" value="998F500"></form>
            </div>
        </div>
    </div>
</div>
<div id="trackOrder" class="modal-trackorder modal fade" data-backdrop="static" role="dialog" aria-labelledby="trackorder-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="trackorder-title">追踪订单</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa mcd mcd-close"></i></button>
            </div>
            <div class="modal-body">
                <p>请输入订单号码，查询订单状态。</p>
                <form action="https://www.4008-517-517.cn/cn/searchOrder.jsp" method="post" role="form" id="form_trackOrder" name="form_trackOrder" class="form form-track-order" novalidate>

                    <div class="form-group">
                        <label class="field-label" for="form_trackOrder_orderNum">订单号码:</label>
                        <input type="text" class="form-control input-lg required" id="form_trackOrder_orderNum" name="orderNum" aria-required="true">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-default btn-red btn-lg text-ucase">下一步</button>
                    </div>
                    <input type="hidden" name="csrfValue" value="998F500"></form>
                <p class="note">如有任何问题，请致电麦乐送4008-517-517.</p>
            </div>
        </div>
    </div>
</div>






<div id="alertCartCleared" data-backdrop="static" class="modal-cartcleared modal-alert modal fade" role="dialog" aria-labelledby="cartcleared-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="cartcleared-title">您的购物车即将被清空。</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa mcd mcd-close"></i></button>
            </div>
            <div class="modal-body">
                <div class="alert-content">
                    <p>是否继续？</p>
                    <p>
                        <button data-dismiss-trigger="cartcleared.action.yes" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">是</button>
                        <button data-dismiss-trigger="cartcleared.action.no" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">否</button>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="alertCartCleared-add-address" data-backdrop="static" class="modal-cartcleared modal-alert modal fade" role="dialog" aria-labelledby="cartcleared-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="cartcleared-title">您的购物车即将被清空。</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa mcd mcd-close"></i></button>
            </div>
            <div class="modal-body">
                <div class="alert-content">
                    <p>是否继续？</p>
                    <p>
                        <button data-dismiss-trigger="modal" aria-hidden="true" class="btn btn-default btn-black btn-lg text-ucase">否</button>
                        <button data-dismiss-trigger="add.address.cartcleared.action.yes" aria-hidden="true" class="btn btn-default btn-red btn-lg text-ucase">是</button>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>


<div data-alert-type="modal" data-backdrop="static" data-keyboard="false" class="modal-countdowntimer modal-alert modal fade" role="dialog" aria-labelledby="countdowntimer-title" aria-hidden="true" tabindex="-1" data-delay-show="1500000">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa mcd mcd-close"></i></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-xs-3 timer-wrapper">
                        <div class="time timer text-din timer-clock" data-countdown-time="300" data-countdown-redirect-url="/cn/expireSession.jsp"></div>
                        <div class="time-disclaimer">后清空购物车</div>
                    </div>
                    <div class="col-xs-8 timer-wrapper">
                        <div class="alert-content text-left">
                            <h1 id="countdowntimer-title">还没有提交订单?</h1>
                            <p>您有一段时间没有任何动作了。继续订餐？</p>
                            <p><a data-dismiss="modal" aria-hidden="true" class="btn btn-red btn-lg text-ucase" href="">下一步 </a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="alertAddressFull" data-backdrop="static" class="modal-addresfull modal-alert modal fade" role="dialog" aria-labelledby="addressfull-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="addressfull-title">地址薄满了！</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa mcd mcd-close"></i></button>
            </div>
            <div class="modal-body">
                <div class="alert-content">
                    <p>抱歉，最多只能添加5个送餐地址。<br><br>删除一个现有订餐地址，才可以添加新地址。</p>
                    <p>
                        <button data-dismiss-trigger="addressfull.action.no" aria-hidden="true" class="btn btn-default btn-black btn-lg text-ucase">取消</button>

                        <a class="btn btn-default btn-red btn-lg text-ucase" href="address.jsp">下一步</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>



<script type="text/javascript" src="../js/plugins.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/local.js"></script>
<script>

    $(function() {
        if(false){
            $('body').on('click', '.menu-item-menu .menu-item-target, .action-ordernow, a[href*="account-order-history"] , a[href*="account-favourites"]', function(event) {
                event.preventDefault();
                $('#deliveryOptions').one('show.bs.modal', function() {
                    $('#form_deliveryoptions_datetime_later').iCheck('check');
                }).modal('show');
            });
        }

        $('#form_deliveryoptions').deliveryOptions({
            // copy
            timeInputHint: '\u8BF7\u9009\u62E9\u9001\u9910\u65F6\u95F4',

            // api endpoints
            getTimeSlotsUrl: '/cn/ajax/getTimeSlots.json',
            validateUrl: '/cn/validate/validateStoreStatus.json',

            // status codes
            STATUS_CODE_ADDRESS_OOB:  416,
            STATUS_CODE_STORE_CLOSED: 503,
            STATUS_CODE_ADDRESS_OK:	  200
        });

        $.ajaxPrefilter(function(options, originalOptions, jqXHR) {
            var sId = 'BBFCC2618764C77F9E33C7BEC998F500.s21t10';
            var pid = sId.lastIndexOf('.');
            if (pid > 0) {
                sId = sId.substr(0, pid);
            }
            var csrfVal = sId.substr(sId.length-7, 7);
            jqXHR.setRequestHeader("csrfValue", csrfVal);
        });
        var signin = null;
        if(signin != null){
            $("#signin").modal();
            var loginErrMsg = $("form[action*=login] #errorId");
            if($(loginErrMsg)[0]){
                $(loginErrMsg).clone().appendTo($("#signin fieldset:first"));
            }
        }
    })

</script>







<script type="text/javascript">

    jQuery(function($) {


        if(false){
            $('#alertAddBookEmpty').modal('show');
        }


        $(document).on('add.address.cartcleared.action.yes', function(event) {
            window.location = '/cn/address.jsp';
        });

        $(document).on('cartcleared.action.yes', function(event) {
            var addressTypeStr = 1;
            window.location = '/cn/removeAddress.jsp' + "?addressType=" + addressTypeStr;
        });


        $('#form_trackOrder').validate({
            rules: {
                orderNum: {
                    required: true,
                    remote: {
                        param: {
                            url: '/cn/validate/trackOrder.json',
                            data: {
                                orderNumber: function() {
                                    console.log('orderNumber : ', $('#form_trackOrder_orderNum').val());
                                    return $('#form_trackOrder_orderNum').val();
                                }
                            },
                            complete: function(xhr, status) {
                                var response = xhr.responseJSON;
                                if(response.valid==false)
                                {
                                    $('#form_trackOrder .form-group .error')
                                        .jsp(response.message);
                                }
                            }
                        }
                    }
                }
            },
            messages: {
                orderNum: {
                    required : '\u8BA2\u5355\u53F7\u7801\u662F\u5FC5\u586B\u5185\u5BB9\u3002'
                }
            }
        });


        $('#form_login_modal').validate({
            messages: {
                'form_login_modal_username': {
                    required: 'form.signin.email.error.required',
                    email: 'form.signin.email.error.invalid'
                },
                'form_login_modal_password': {
                    required: 'Password is required.'
                }
            },
            errorPlacement: function(error, element) {
                var ElementParent = element.parent();
                if (/form_login_modal_username|form_login_modal_password/.test(element.attr('name'))) {
                    $('#form_login_modal_password').parents('.textfield-list-group').append(error);
                } else {
                    error.insertAfter(element);
                }
            }
        });

    });

</script>


<div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_address-button" id="form_deliveryoptions_address-menu" style="width: 100px;" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-985"><li role="presentation" class="ui-corner-bottom ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="#" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-985">厦门市 思明区 湖滨中路557号  国贸春天 1号楼 2层 2室</a></li></ul></div><div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_date-button" id="form_deliveryoptions_date-menu" style="width: 100px; height: 244px;" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-730"><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="#" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-730">2014/12/24</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">2014/12/25</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">2014/12/26</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">2014/12/27</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">2014/12/28</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">2014/12/29</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">2014/12/30</a></li><li role="presentation" class="ui-corner-bottom"><a href="#" tabindex="-1" role="option" aria-selected="false">2014/12/31</a></li></ul></div><div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;"><ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_time-button" id="form_deliveryoptions_time-menu" style="width: 100px; height: 244px;" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-515"><li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="#" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-515">请选择送餐时间</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">11:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">12:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">12:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">12:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">12:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">13:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">13:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">13:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">13:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">14:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">14:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">14:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">14:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">15:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">15:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">15:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">15:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">16:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">16:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">16:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">16:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">17:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">17:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">17:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">17:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">18:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">18:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">18:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">18:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">19:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">19:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">19:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">19:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">20:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">20:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">20:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">20:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">21:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">21:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">21:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">21:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">22:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">22:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">22:30</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">22:45</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">23:00</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">23:15</a></li><li role="presentation"><a href="#" tabindex="-1" role="option" aria-selected="false">23:30</a></li><li role="presentation" class="ui-corner-bottom"><a href="#" tabindex="-1" role="option" aria-selected="false">23:45</a></li></ul></div></body></html>