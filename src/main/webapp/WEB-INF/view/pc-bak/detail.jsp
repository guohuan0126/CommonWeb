<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>校园论坛</title>
    <link href="${ctx}/static/index/css/base.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/index/css/main.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${ctx}/static/index/js/jquery-1.8.3.min.js"></script>
    <link href="${ctx}/static/index/css/jquery.slideBox.css" rel="stylesheet" type="text/css"/>
    <script src="${ctx}/static/index/js/jquery.slideBox.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${ctx}/static/index/js/nav.js"></script>
    <script>
        jQuery(function ($) {
            $('#newspic').slideBox({
                duration: 0.3,//滚动持续时间，单位：秒
                easing: 'linear',//swing,linear//滚动特效
                delay: 5,//滚动延迟时间，单位：秒
                hideClickBar: false,//不自动隐藏点选按键
                clickBarRadius: 10
            });
        });
    </script>
</head>
<body>
<!--导航条 start-->
<jsp:include page="head.jsp"/>

<!--导航条 end-->
<div class="container mg-t-b">
    <div class="page-left">
        <div class="pagelist">
            <h1>仲裁员</h1>
            <ul class="listbox">
                <li><a href="jvascript:;">关于我们</a></li>
                <li><a href="#">仲裁动态</a></li>
                <li><a href="#">仲裁须知</a></li>
                <li><a href="#">仲裁规则</a></li>
                <li class="active"><a href="javascript:;">仲裁员</a>
                    <ul class="dropdown">
                        <li><a href="#">仲裁员名册</a></li>
                        <li class="active"><a href="#">仲裁员守则</a></li>
                    </ul>
                </li>
                <li><a href="javascript:;">法律制度</a>
                    <ul class="dropdown">
                        <li><a href="#">仲裁规则</a></li>
                        <li><a href="#">法律法规</a></li>
                        <li><a href="#">统计数据</a></li>
                    </ul>
                </li>
                <li><a href="javascript:;">在线服务</a>
                    <ul class="dropdown">
                        <li><a href="#">在线咨询</a></li>
                        <li><a href="#">立案申请</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="news-txt hotarticl">
            <div class="hottit"><span>热文推荐</span></div>
            <div class="news-con">
                <ul class="newslist">
                    <li><a href="#">本会开展加强仲裁工作推进会议</a><span>09-10</span></li>
                    <li><a href="#">本会召开第一届仲裁员聘任会议</a><span>09-10</span></li>
                    <li><a href="#">本会与市中级人民法院就建立仲裁与诉讼衔接机制召开座谈会</a><span>09-10</span></li>
                    <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                    <li><a href="#">"一带一路"仲裁发展交流会在我市召开</a><span>09-10</span></li>
                    <li><a href="#">宁夏仲裁工作座谈会在我市召开</a><span>09-10</span></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="page-right">
        <div class="pagelujing">
            <div class="name">仲裁员守则</div>
            <span>您当前所在位置：<a href="#">首页</a> > <a href="#">仲裁员</a> > <a href="#">仲裁员守则</a></span></div>
        <div class="biaoti">${beanData.title}</div>
        <div class="sshuomign"><span>发布人员：${beanData.author}</span>|<span>发布时间：<fmt:formatDate
                value="${beanData.createtime}"
                pattern="yyyy-MM-dd HH:mm:ss"/></span></div>
        <div class="article_txt">
            ${beanData.content}
        </div>

    </div>
    <div class="clearfix"></div>
</div>
<div class="foot">
    <div class="ft-menu">
        <div class="container">
            <div class="menu">
                <dl>
                    <dt>首页</dt>
                    <dd>
                        <a href="#"></a>
                    </dd>
                </dl>
                <dl>
                    <dt>关于我们</dt>
                    <dd>
                        <a href="#">关于中仲</a>
                    </dd>
                </dl>
                <dl>
                    <dt>仲裁动态</dt>
                    <dd>
                        <a href="#">仲裁动态</a>
                    </dd>
                </dl>
                <dl>
                    <dt>仲裁员</dt>
                    <dd>
                        <a href="#">仲裁员名册</a>
                        <a href="#">仲裁员守则</a>
                    </dd>
                </dl>
                <dl>
                    <dt>法律制度</dt>
                    <dd>
                        <a href="#">仲裁规则</a>
                        <a href="#">法律法规</a>
                        <a href="#">统计数据</a>
                    </dd>
                </dl>
                <dl>
                    <dt>在线服务</dt>
                    <dd>
                        <a href="#">在线咨询</a>
                        <a href="#">立案申请</a>
                    </dd>
                </dl>
                <dl class="last">
                    <dt>校园论坛</dt>
                    <dd>
                        <p>联系地址：中国北京123456789号（市财政局后楼四楼）</p>
                        <p>邮政编码：123456</p>
                        <p>咨询电话：0000-123456</p>
                        <p>电子邮件：123456@163.com</p>
                        <p>网　　址：www.123456.com</p>
                    </dd>
                </dl>
                <div class="clearfix"></div>
            </div>
            <div class="ewm">
                <img src="images/ewm.png"/>
                <p>扫码关注公众号</p>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="cop">
        <div class="container">Copyright © 2019 - 2019 www.xxxxx.com All Rights Reserved 苏ICP备123456789号-4
            苏公网安备123456789号
        </div>
    </div>
</div>
<script src="${ctx}/static/index/js/Tabs.js"></script>
<script type="text/javascript">
    $(function () {
        $("#link").rTabs({
            bind: 'hover',
            animation: 'fadein',
            auto: false
        });
    })
</script>
<script type="text/javascript">
    $('#weather').leoweather({format: '{时段}好！<span id="colock">现在时间是：{年}年{月}月{日}日 星期{周} {时}:{分}:{秒}，</span> <b>{城市}天气</b> {天气} {夜间气温}℃ ~ {白天气温}℃'});
</script>
<script type="text/javascript">
    $(function () {
        $(".listbox>li").click(function () {
            $(".listbox>li").removeClass("active");
            $(this).addClass("active");
        });
    })
</script>
<script src="js/jquery.page.js"></script>
<script>
    $(".tcdPageCode").createPage({
        pageCount: 100,
        current: 1,
        backFn: function (p) {
            //console.log(p);
        }
    });
</script>
</body>
</html>
