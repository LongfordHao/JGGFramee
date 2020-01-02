<%--公共模块--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
    <title><sitemesh:title default="欢迎光临"/></title>
    <%@include file="/WEB-INF/views/modules/cms/front/include/head.jsp" %>
    <sitemesh:head/>
    <div class="top_bg overflow" style="margin:0px">
        <div class="top_r1 overflow"style="height: 20px">
            <div class="fl"style="float: left;margin-top: 5px;margin-left: 200px;"> 欢迎您来到蓉江新区智慧社区官网~</div>
            <div class="pull-right"style="float: left;margin-top: 5px;margin-left: 500px;margin-right: 200px;" >${fns:getDate('yyyy年MM月dd日 E')}</div>
        </div>
    </div>
</head>
<script>var _hmt = _hmt || [];
(function () {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?82116c626a8d504a5c0675073362ef6f";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>
<style type="text/css">
    .guide{width:50px;position:fixed;top:270px;_position:absolute;_top:expression(documentElement.scrollTop+documentElement.clientHeight - this.clientHeight - 134+'px');display:block;}--%>
    .guide .find{background-position:-84px -236px;}--%>
    .guide .report{background-position:-146px -236px;}--%>
    .guide .edit{background-position:-83px -185px;}--%>
   .guide .top{background-position:-145px -185px;}--%>
</style>

<body>
<%--<div class="hero-unit" style="margin:0px;font-size: 38px;--%>
<%--background-image: url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/timg2.jpg);background-size: 100%">--%>
<%--<p>蓉江新区智慧社区官网 </p>--%>
<%--<div class="header1">--%>


     <%--style="background: url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/首页封面第三版.jpg)center;width: 100%;min-width: 1200px;height: 143px;margin-top: 5px;">--%>
    <%--<div class="minqing" style="width: 1200px;margin: 0 auto;">--%>
        <%--<div class="right sousuo" style="margin-left: 780px;padding-top: 55px;">--%>
            <%--<input type="text" class="search"--%>
                   <%--style=" width: 258px; height: 28px;padding-left: 40px; line-height: 30px;"/>--%>
            <%--<img src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/shousuo.png" class="search1"--%>
                 <%--style=" position: absolute;margin-left: -290px;margin-top: 18px;padding-top: 5px;"/>--%>
            <%--<span class="zhanneisousuo"><a href="#">站内搜索</a></span>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<div class="navbar navbar-fixed-top" style="position:static;margin-bottom:10px;">
    <div class="navbar-inner">
        <div class="container">
            <div class="nav-collapse">
                <ul id="main_nav" class="nav nav-pills">
                    <li class="${not empty isIndex && isIndex ? 'active' : ''}"><a
                            href="${ctx}/index-1${fns:getUrlSuffix()}"><span>${site.id eq '1'?'首　 页':'返回主站'}</span></a>
                    </li>
                    <c:forEach items="${fnc:getMainNavList(site.id)}" var="category" varStatus="status"><c:if
                            test="${status.index lt 6}">
                        <c:set var="menuCategoryId" value=",${category.id},"/>
                        <li class="${requestScope.category.id eq category.id||fn:indexOf(requestScope.category.parentIds,menuCategoryId) ge 1?'active':''}">
                            <a href="${category.url}" target="${category.target}"><span>${category.name}</span></a></li>
                    </c:if></c:forEach>
                    <li id="siteSwitch" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" title="站点"><i
                                class="icon-retweet"></i></a>
                        <ul class="dropdown-menu">
                            <c:forEach items="${fnc:getSiteList()}" var="site">
                                <li><a href="#"
                                       onclick="location='${ctx}/index-${site.id}${urlSuffix}'">${site.title}</a></li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li id="themeSwitch" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#" title="主题切换"><i
                                class="icon-th-large"></i></a>
                        <ul class="dropdown-menu">
                            <c:forEach items="${fns:getDictList('theme')}" var="dict">
                                <li><a href="#"
                                       onclick="location='${pageContext.request.contextPath}/theme/${dict.value}?url='+location.href">${dict.label}</a>
                                </li>
                            </c:forEach>
                        </ul>
                        <!--[if lte IE 6]>
                        <script type="text/javascript">$('#themeSwitch').hide();</script><![endif]-->
                    </li>
                </ul>
                <%--<form class="navbar-form pull-right" action="${ctx}/search" method="get">--%>
                <%--<input type="text" name="q" maxlength="20" style="width:65px;" placeholder="全站搜索..." value="${q}">--%>
                <%--</form>--%>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>
<div class="container">
    <div class="content">
        <sitemesh:body/>
    </div>
    <hr style="margin:20px 0 10px;">
    <footer>
        <div class="footer_nav"><a href="${ctx}/guestbook" target="_blank">公共留言</a> | <a href="${ctx}/search"
                                                                                         target="_blank">全站搜索</a> | <a
                href="${ctx}/map-${site.id}${fns:getUrlSuffix()}" target="_blank">站点地图</a> | <a
                href="mailto:thinkgem@163.com">技术支持</a> | <a
                href="${pageContext.request.contextPath}${fns:getAdminPath()}" target="_blank">后台管理</a></div>
        <div class="pull-right">${fns:getDate('yyyy年MM月dd日 E')}</div>
        <%--<div class="copyright">${site.copyright}</div>--%>
    </footer>
</div> <!-- /container -->
<div class="shop tab8" style="position:absolute;left:0px;top:300px">
    <%--<div class="shopnav hd">--%>
    <%--<ul>--%>
    <%--<li class="pfa1" id="wx1"><a href="javascript:;">官方微信</a></li>--%>
    <%--<li class="pfa2" id="wz1"><a href="javascript:;">手机网站</a></li>--%>
    <%--</ul>--%>
    <%--</div>--%>
    <a class="topsol" href="javascript:;" onclick="$('html,body').animate({scrollTop:0},'slow');"></a>
        <%--<div class="guide">--%>
            <%--<img src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/分享1.jpg">--%>
            <%--<img src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/二维码1.jpg">--%>
        <%--</div>--%>
</div>
</body>
</html>
