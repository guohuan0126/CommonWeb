<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<ul class="layui-nav layui-bg-green" lay-filter="" style="margin-bottom: 0px;text-align: center;">
    <li class="layui-nav-item"><a href="${ctx}/pc/index">山西警察学院校园论坛</a></li>
    <%--<li class="layui-nav-item"><a href="${ctx}/manage/login">后台管理</a></li>--%>
    <li class="layui-nav-item"><a href="${ctx}/pc/articleIndex">帖子列表</a></li>
    <li class="layui-nav-item"><a href="${ctx}/manage/addArticle?pc=pc">我要发帖</a></li>
    <c:if test="${sessionScope.loginUserinfo!=null}">
        <li class="layui-nav-item">
            <a href="${ctx}/pc/articleIndex?g=1&author=${sessionScope.loginUserinfo.name}">我的帖子
            </a></li>
    </c:if>
    <li class="layui-nav-item"><a href="${ctx}/pc/questionnaire">调查问卷</a></li>
    <li class="layui-nav-item"><a href="${ctx}/pc/leaveMessage">留言</a></li>
    <li class="layui-nav-item"><a href="${ctx}/pc/informIndex">校园公告</a></li>

<%--<li class="layui-nav-item"><a href="${ctx}/test/testPage">测试地址</a></li>--%>
<%--    <li class="layui-nav-item">
        <a href="${ctx}/pc/articleIndex">帖子列表</a>
        <dl class="layui-nav-child"> <!-- 二级菜单 -->
&lt;%&ndash;
            <dd><a href="${ctx}/test/testTable">表格页面</a></dd>
&ndash;%&gt;
            <dd><a href="${ctx}/pc/articleIndex">帖子列表</a></dd>
            <c:if test="${sessionScope.loginUserinfo!=null}">
                <dd><a href="${ctx}/pc/articleIndex?g=1&author=${sessionScope.loginUserinfo.name}">我的帖子</a></dd>
            </c:if>
        </dl>
    </li>--%>
    <c:if test="${sessionScope.loginUserinfo==null}">
        <li class="layui-nav-item" style="background: #ff7f21"><a href="${ctx}/pc/login">马上登陆</a></li>
        <span class="layui-form-mid"></span>
        <li class="layui-nav-item" style="background: #ff7f21"><a href="${ctx}/pc/register">点我注册</a></li>
    </c:if>
    <c:if test="${sessionScope.loginUserinfo!=null}">

        <li class="layui-nav-item">
            <a href=""><img src="${sessionScope.loginUserinfo.picurl}"
                            class="layui-nav-img">${sessionScope.loginUserinfo.name}</a>
            <dl class="layui-nav-child">
                <dd><a href="${ctx}/pc/userinfoCenter">个人中心</a></dd>
                <dd><a href="${ctx}/pc/loginOut">退出登录</a></dd>
            </dl>
        </li>
    </c:if>
</ul>