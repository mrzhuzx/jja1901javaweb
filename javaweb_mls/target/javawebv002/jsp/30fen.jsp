
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html>
<!-- saved from url=(0082)30fen.jsp -->
<html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms no-csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths no-ieolderthan9" style=""><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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

    <!--[if lt IE 9]><script type="text/javascript" src="/cn/static/1418178769517/assets/00/js/oldie.js"></script><![endif]-->

    <script type="text/javascript"> </script>


    <script type="text/javascript">var _gaq = _gaq || [];_gaq.push(['_setAccount', 'UA-24138769-1']);_gaq.push(['_trackPageview']);(function(){var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);})();</script>


</head>


<body class="country-86 lang-zh page-error-unexpected-difficulty page-error" style="">

<!--[if lt IE 9]>
<p id="outdated" class="browsehappy">您目前使用的浏览器版本过低，为保证您正常浏览网页，请<a href="http://browsehappy.com/?locale=zh" target="_blank">升级</a>至最新版本。</p>
<![endif]-->
<!-- TODO: Please add the following line -->


<script type="text/javascript"></script>

<div class="root">
    <div class="wrap container">
        <div class="global-header">
            <div class="header-actions row">
                <div class="language-selector">
                    <ul class="list-inline list-inline-divide">
                        <li class="list-item selected">
                            <a class="list-item-target" href="#">中文 <i class="fa fa-caret-left icon"></i></a>
                            <!-- -->
                        </li>
                        <li class="list-item"><a class="list-item-target" href="#">English <i class="fa fa-caret-left icon"></i></a></li>
                    </ul>
                </div>
                <div class="my-account-quicklinks">
                    <ul class="list-inline list-inline-divide">




                        <li class="list-item"><a class="list-item-target" href="mlslogin.jsp" data-toggle="modal" data-target="#signin">登录</a></li>





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
                            <a class="menu-item-target dropdown-toggle" href="zhanghushezhi.jsp" data-toggle="modal" data-target="#signin">
                                <i class="fa fa-user icon"></i>
                                我的账户
                            </a>
                        </li>




                        <li class="menu-item menu-item-support selected">
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
        <div class="main" role="main">


            <div class="row row-narrow">
                <div class="page-sidebar">
                    <div class="sidebar-menu">
                        <h2 class="menu-category">帮助</h2>
                        <ul class="menu">


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



                            <li class="menu-item selected">


                                <a class="menu-item-target" href="30fen.jsp" target="_self">关于30分钟必达</a>

                            </li>



                            <li class="menu-item">

                                <a class="menu-item-target" href="phone.jsp" target="_self">手机网站</a>


                            </li>

                        </ul>
                    </div>
                </div>
                <div class="col-xs-10">
                    <div class="page-title">
                        <h1>关于30分钟必达</h1>
                    </div>
                    <div class="panel-lg panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-xs-12">30分钟必达是指：自订单上显示的餐厅接受订单时间起，至餐点送达顾客或其指定收餐人为止，所用送餐时间不超过三十分钟； 如超出三十分钟，我们将赠送顾客价值30元起的食品兑换券一份，食品兑换券的使用规则详见食品兑换券。 在订单金额大于或等于人民币300元或在恶劣天气等不可抗力的情况下，我们的送餐时间可能会超过三十分钟。</div>
                            </div>
                        </div>
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

                    <!-- <div class="column col-xs-4">
                        <h3>Stay in touch with us!</h3>
                        <form class="signup-form form" action="" method="post" accept-charset="utf-8" role="form">
                              <div class="form-row">
                                  <input type="text" class="form-control input-lg" placeholder="Enter your email address">
                              </div>
                            <div class="form-row">
                                <button type="submit" class="btn btn-primary btn-lg btn-block btn-red">Sign me up!</button>
                            </div>
                        </form>
                    </div> -->
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



    </div>

</div>
<div id="loading-view" class="loading-view hidden"><div class="loading"><span class="loading-icon"></span></div></div>



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
                            <input type="hidden" name="csrfValue" value="67D389A"></form>
                    </div>
                </div>
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
                    <input type="hidden" name="csrfValue" value="67D389A"></form>
                <p class="note">如有任何问题，请致电麦乐送4008-517-517.</p>
            </div>
        </div>
    </div>
</div>







<!--	[#trackOrder.modal] -->

<!-- [/#trackOrder.modal] -->

<!-- [#alertAddBookEmpty.modal] -->
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
<!-- [/#alertAddBookEmpty.modal] -->

<div id="rememberMe" class="modal-rememberme modal fade" data-backdrop="static" role="dialog" aria-labelledby="rememberme-title" aria-hidden="true" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 id="rememberme-title">下次自动登录</h1>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa mcd mcd-close"></i></button>
            </div>
            <div class="modal-body">
                <p>选择“记住我”，您将在30天内保持登录状态。为避免您的账户产生异常订单，请不要在公用电脑上使用此功能。</p>
                <div class="form-group">
                    <button id="btnRememberMeCancel" class="btn btn-default btn-black btn-lg text-ucase">取消</button>
                    <button id="btnRememberMeAgree" class="btn btn-default btn-red btn-lg text-ucase">确认</button>
                </div>
                <p class="note">如有任何问题，请致电麦乐送4008-517-517。</p>
            </div>
        </div>
    </div>
</div>
<script>
    /*<![CDATA[*/
    $(function() {
        $("#form_login_masthead_rememberme").on("ifChecked", function(event){
            $("#rememberMe").modal("show");
        });
        $("#modal_login_rememberme").on("ifChecked", function(event){
            $("#rememberMe").modal("show");
        });
        $("#btnRememberMeCancel").click(function(){
            $("#rememberMe").modal("hide");
            $("#form_login_masthead_rememberme").iCheck("uncheck");
            $("#modal_login_rememberme").iCheck("uncheck");
        })
        $("#btnRememberMeAgree").click(function(){
            $("#rememberMe").modal("hide");
        })
        $(":button[class=close]").click(function(){
            $("#btnRememberMeCancel").click();
        })
    })
    /*]]>*/
</script>








<script type="text/javascript" src="../js/plugins.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/local.js"></script>
<script>
    /*<![CDATA[*/
    $(function() {
        if(false){
            $('body').on('click', '.menu-item-menu .menu-item-target, .action-ordernow, a[href*="account-order-history"] , a[href*="account-favourites"]', function(event) {
                event.preventDefault();
                $('#deliveryOptions').one('show.bs.modal', function() {
                    $('#form_deliveryoptions_datetime_later').iCheck('check');
                }).modal('show');
            });
        }
        /* [#deliveryOptions.modal] */
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
        /* [/#deliveryOptions.modal] */
        $.ajaxPrefilter(function(options, originalOptions, jqXHR) {
            var sId = '5D7217E5EE1BD2860F5BC3E6567D389A.s22t10';
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
    /*]]>*/
</script>







<script type="text/javascript">
    /*<![CDATA[*/
    jQuery(function($) {

        /* [#alertAddBookEmpty.modal] */
        // If the address book is empty, show #alertAddBookEmpty modal whenever user tries to order
        if(false){
            $('body').on('click', '.menu-item-menu .menu-item-target, .action-ordernow, .action-orderinadvance', function(event) {
                event.preventDefault();
                $('#alertAddBookEmpty').modal('show');
            });
        }
        /* [/#alertAddBookEmpty.modal] */

        /* [#trackOrder.modal] */
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
        /* [/#trackOrder.modal] */
        jQuery(function($) {
            $('.menu-item').click(function() {
                $(".menu li").each(function() {
                    $(this).removeClass("selected");
                });
                $(this).addClass("selected");
            });
        });

        $('#form_login_modal').validate({
            rules: {
                userName: {
                    required: true,
                    email: true
                },

                password: {
                    required: true
                }
            },
            messages: {
                userName: {
                    required: '\u90AE\u7BB1\u662F\u5FC5\u586B\u4FE1\u606F',
                    email: '\u8BF7\u8F93\u5165\u90AE\u7BB1'
                },

                password: {
                    required: '\u5BC6\u7801\u662F\u5FC5\u586B\u4FE1\u606F'
                }
            },
            errorPlacement: function(error, element) {
                var ElementParent = element.parent();
                if (element.attr("name") == "userName" || element.attr("name") == "password" ) {
                    $('#form_login_modal_password').parents('.textfield-list-group').append(error);
                    $("#form_login_masthead #errorId").remove();
                } else {
                    error.insertAfter(element);
                }
            }
        });
        /* [/#signin.modal] */
    });
    /*]]>*/
</script>



</body></html>