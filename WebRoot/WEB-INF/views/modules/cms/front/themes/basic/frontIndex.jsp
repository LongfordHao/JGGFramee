<%--首页加载的页面--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<title>首页</title>
<meta name="decorator" content="cms_default_${site.theme}"/>
<meta name="description" content=" ${site.description}"/>
<meta name="keywords" content=" ${site.keywords}"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%--<meta http-equiv="refresh" content="2; url=yewubanli.jsp">--%>
<head>
    <%--<!-- 第一个轮播图 -->--%>
    <%--<link rel="stylesheet" href="${ctxStatic}/bootstrap/2.3.1/css/tuniu.css"/>--%>
    <%--<script src="${ctxStatic}/bootstrap/2.3.1/js/jquery-2.1.4.min.js"></script>--%>
    <%--<script src="${ctxStatic}/bootstrap/2.3.1/js/index.js"></script>--%>
</head>
<body>
<style>
    body, html, div, blockquote, img, label, p, h1, h2, h3, h4, h5, h6, pre, ul, ol,
    li, dl, dt, dd, form, a, fieldset, input, th, td {
        margin: 0;
        padding: 0;
        border: 0;
        outline: none;
        list-style-type: none;
        overflow-x: none;
    }

    body {
        line-height: 1;
        font-size: 88%;
        font-family: "微软雅黑"
    }

    h1, h2, h3, h4, h5, h6 {
        font-size: 100%;
        margin: 0;
        font-weight: 400;
        padding: 0;
    }

    ul, ol {
        list-style: none;
    }

    a {
        color: #404040;
        text-decoration: none;
    }

    body {
        height: 2000px;
    }

    .aixin ul {
        margin: 5px 0px 9px 14px;
    }

    .aixin ul li a {
        font-size: 14px;
        line-height: 25px;
        color: #333333;
    }
</style>
<div class="center">
    <%--<div class="center_top">--%>
        <%--<!-- 轮播图开始区域 -->--%>
        <%--<div id="bannar">--%>
            <%--<div class="content_middle">--%>
                <%--<ul>--%>
                    <%--<li style="background-size:contain;width:100%;height:100%;background:url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/000.jpg) no-repeat center center;"></li>--%>
                    <%--<li style="background-size:contain;width:100%;height:100%;background:url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/303.jpg) no-repeat center center;"></li>--%>
                <%--</ul>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--第一张图片--%>
    <%--<div class="wrap overflow pt15">--%>
        <%--<img src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/333666.png">--%>
    <%--</div>--%>
    <%--&lt;%&ndash;空行&ndash;%&gt;--%>
    <%--<div class="wrap overflow pt16">--%>
        <%--<p></p>--%>
    <%--</div>--%>
    <%--&lt;%&ndash;第二张图片&ndash;%&gt;--%>
    <%--<div class="wrap overflow pt16">--%>
        <%--<img src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/666333.png">--%>
    <%--</div>--%>
    <%--第一个大模块--%>
    <div class="row" ;>
        <div class="span4">
            <h4>
                <small><a href="${ctx}/list-2${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>
                公告通知
            </h4>
            <ul><c:forEach items="${fnc:getArticleList(site.id, 2, 8, '')}" var="article">
                <li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy-MM-dd"/></span><a
                        href="${article.url}">${fns:abbr(article.title,28)}</a></li>
            </c:forEach></ul>
        </div>
        <%--<div class="span4">--%>
            <%--<img src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/强调.jpg" style="opacity: 1; "></a>--%>
        <%--</div>--%>
        <%--<div class="span4">--%>
            <%--<h4>--%>
                <%--<small><a href="${ctx}/list-10${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>--%>
                <%--生活服务--%>
            <%--</h4>--%>
            <%--<ul><c:forEach items="${fnc:getArticleList(site.id, 10, 8, '')}" var="article">--%>
                <%--<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy-MM-dd"/></span><a--%>
                        <%--href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>--%>
            <%--</c:forEach></ul>--%>
        <%--</div>--%>
        <%--<div class="wrap overflow pt15">--%>
            <%--<img src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/333666.png">--%>
        <%--</div>--%>
        <div class="wrap overflow pt16">
            <p></p>
        </div>
        <%--<div class="wrap overflow pt16">--%>
            <%--<img src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/666333.png">--%>
        <%--</div>--%>
        <div class="row" ;>
            <%--<div class="span4">--%>
                <%--<div class="zhengfu1" style="padding: 5px 25px;color: #FFFFFF;font-size: 18px;">--%>
                    <%--<span>工作动态</span>--%>
                    <%--<label class="right"><a href="${ctx}/list-2${urlSuffix}">more>></a></label>--%>
                <%--</div>--%>
                <%--<ul><c:forEach items="${fnc:getArticleList(site.id, 2, 8, '')}" var="article">--%>
                    <%--<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}"--%>
                                                                 <%--pattern="yyyy-MM-dd"/></span><a--%>
                            <%--href="${article.url}">${fns:abbr(article.title,28)}</a></li>--%>
                <%--</c:forEach></ul>--%>
            <%--</div>--%>
            <%--<div class="span4">--%>
                <%--<img src="${pageContext.request.contextPath}/static/bootstrap/bsie/img/09090607eeql.jpg"--%>
                     <%--style="opacity: 1; "></a>--%>
            <%--</div>--%>
            <%--<div class="span4">--%>
                <%--<h4>--%>
                    <%--<small><a href="${ctx}/list-10${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>--%>
                    <%--政务服务--%>
                <%--</h4>--%>
                <%--<ul><c:forEach items="${fnc:getArticleList(site.id, 10, 8, '')}" var="article">--%>
                    <%--<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}"--%>
                                                                 <%--pattern="yyyy-MM-dd"/></span><a--%>
                            <%--href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>--%>
                <%--</c:forEach></ul>--%>
            <%--</div>--%>
        </div>
    </div>
    <%--&lt;%&ndash;街道社区介绍模块&ndash;%&gt;--%>
    <%--<div class="zhuxueyuanmeng " style="height:470px;margin-top: 15px;border: 1px solid rgb(220,220,220);">--%>
        <%--<div class="zxym_content"--%>
             <%--style="width: 940px;height: 37px;background: url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/timg.jpg);">--%>
            <%--<span>街道社区介绍</span>--%>
            <%--<a href="#" class="right"--%>
               <%--style="    font-size: 12px;line-height: 35px;padding-right: 18px;color: #FFFFFF; float: right;">更多>></a>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;  margin-top: 10px;  width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿1.jpg"/>--%>
            <%--<p>南街居委会</p>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;   margin-top: 10px;    width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿2.jpg"/>--%>
            <%--<p>黄金玲街道办</p>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;    margin-top: 10px;   width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿3.jpg"/>--%>
            <%--<p>北街居委会</p>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;   margin-top: 20px;    width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿4.jpg"/>--%>
            <%--<p>东奥街道办</p>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;   margin-top: 20px;    width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿5.jpg"/>--%>
            <%--<p>黄金玲街道办</p>--%>
        <%--</div>--%>
        <%--<div class="clear"></div>--%>
    <%--</div>--%>
    <%--办事指南、网格模块--%>
    <%--<div class="content" style="height:450px;margin-top: 15px;margin-left: 15px;border: 1px solid rgb(220,220,220);">--%>
        <%--<div class="aixindiandian left" style="margin-right: 15px;width: 480px;float:left">--%>
            <%--<div class="axdd_content"--%>
                 <%--style="width: 480px;height: 37px;background: url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/timg.jpg);;">--%>
                <%--<span>政务服务</span>--%>
                <%--<label class="right"--%>
                       <%--style="font-size: 12px;line-height: 35px;padding-right: 18px;color: #FFFFFF; float: right;"><a--%>
                        <%--href="#">更多>></a></label>--%>
            <%--</div>--%>
            <%--<div class="bmlink-box mb15 fl" id="society"--%>
                 <%--style="width: 480px; margin-left: 0px; float: left; background-color: rgb(242, 242, 242);">--%>
                <%--<div class="bmlink-box-con  fl" style="width: 480px; height: 65px; margin-bottom: 5px;">--%>
                    <%--<div style="height: 65px; display: inline-block;">--%>
                        <%--<table id="jhsyy0"--%>
                               <%--style="width: 230px; height: 65px; display: inline-block; background-color: rgb(223, 241, 232);"--%>
                               <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                            <%--<tbody>--%>
                            <%--<tr text-align:--%>
                            <%--'center'="">--%>
                            <%--<td rowspan="2"><h2--%>
                                    <%--class="bmlink-h1"--%>
                                    <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                                <%--高龄老人生活补贴申报</h2></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td></td>--%>
                                <%--<td></td>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                    <%--<div style="width: 245px; height: 65px; display: inline-block;">--%>
                        <%--<table style="width: 100%; text-align: center;">--%>
                            <%--<tbody>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a--%>
                                        <%--style='background: url("../../r/cms/www/default/img/icons/bszn.png") no-repeat left; margin-left: 12px;'--%>
                                        <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank"><h2--%>
                                        <%--class="bmlinkk-h1"--%>
                                        <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--办事指南</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="yu0"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                            <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank">--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线预约</h2></a></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a id="sha0"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsbl.png") no-repeat left; margin-left: 12px;'--%>
                                                            <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank">--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线申请</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="noaa0"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/bgxz.png") no-repeat left; color: rgb(35, 172, 57); margin-left: 12px;'--%>
                                                            <%--onclick='donww("2d3828b0c33a4d83a7a604316dfd0d78")'--%>
                                                            <%--href="javascript:void(0);"><h2 class="bmlinkk-h1"--%>
                                                                                           <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--表格下载</h2></a>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="bmlink-box-con  fl" style="width: 480px; height: 65px; margin-bottom: 5px;">--%>
                    <%--<div style="height: 65px; display: inline-block;">--%>
                        <%--<table id="jhsyy1"--%>
                               <%--style="width: 230px; height: 65px; display: inline-block; background-color: rgb(223, 241, 232);"--%>
                               <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                            <%--<tbody>--%>
                            <%--<tr text-align:--%>
                            <%--'center'="">--%>
                            <%--<td rowspan="2"><h2--%>
                                    <%--class="bmlink-h1"--%>
                                    <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                                <%--城镇居民基本医疗保险办理</h2></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td></td>--%>
                                <%--<td></td>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                    <%--<div style="width: 245px; height: 65px; display: inline-block;">--%>
                        <%--<table style="width: 100%; text-align: center;">--%>
                            <%--<tbody>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a--%>
                                        <%--style='background: url("../../r/cms/www/default/img/icons/bszn.png") no-repeat left; margin-left: 12px;'--%>
                                        <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank"><h2--%>
                                        <%--class="bmlinkk-h1"--%>
                                        <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--办事指南</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="yu1"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                            <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank">--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线预约</h2></a></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a id="sha1"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsbl.png") no-repeat left; color: grey; margin-left: 12px; cursor: default;'>--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线申请</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="noaa1"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/bgxz.png") no-repeat left; color: rgb(35, 172, 57); margin-left: 12px;'--%>
                                                            <%--onclick='donww("7cf3ea825e004b8b98a3fc161e7af474")'--%>
                                                            <%--href="javascript:void(0);"><h2 class="bmlinkk-h1"--%>
                                                                                           <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--表格下载</h2></a>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="bmlink-box-con  fl" style="width: 480px; height: 65px; margin-bottom: 5px;">--%>
                    <%--<div style="height: 65px; display: inline-block;">--%>
                        <%--<table id="jhsyy2"--%>
                               <%--style="width: 230px; height: 65px; display: inline-block; background-color: rgb(223, 241, 232);"--%>
                               <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                            <%--<tbody>--%>
                            <%--<tr text-align:--%>
                            <%--'center'="">--%>
                            <%--<td rowspan="2"><h2--%>
                                    <%--class="bmlink-h1"--%>
                                    <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                                <%--最低生活保障申请</h2></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td></td>--%>
                                <%--<td></td>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                    <%--<div style="width: 245px; height: 65px; display: inline-block;">--%>
                        <%--<table style="width: 100%; text-align: center;">--%>
                            <%--<tbody>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a--%>
                                        <%--style='background: url("../../r/cms/www/default/img/icons/bszn.png") no-repeat left; margin-left: 12px;'--%>
                                        <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank"><h2--%>
                                        <%--class="bmlinkk-h1"--%>
                                        <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--办事指南</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="yu2"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                            <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank">--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线预约</h2></a></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a id="sha2"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsbl.png") no-repeat left; color: grey; margin-left: 12px; cursor: default;'>--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线申请</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="noaa2"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/bgxz.png") no-repeat left; color: rgb(35, 172, 57); margin-left: 12px;'--%>
                                                            <%--onclick='donww("0ece4f25dbc1434c93b28119621c0e67")'--%>
                                                            <%--href="javascript:void(0);"><h2 class="bmlinkk-h1"--%>
                                                                                           <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--表格下载</h2></a>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="bmlink-box-con  fl" style="width: 480px; height: 65px; margin-bottom: 5px;">--%>
                    <%--<div style="height: 65px; display: inline-block;">--%>
                        <%--<table id="jhsyy3"--%>
                               <%--style="width: 230px; height: 65px; display: inline-block; background-color: rgb(223, 241, 232);"--%>
                               <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                            <%--<tbody>--%>
                            <%--<tr text-align:--%>
                            <%--'center'="">--%>
                            <%--<td rowspan="2"><a href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank"><h2--%>
                                    <%--class="bmlink-h1"--%>
                                    <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                                <%--残疾人证办理</h2></a></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td></td>--%>
                                <%--<td></td>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                    <%--<div style="width: 245px; height: 65px; display: inline-block;">--%>
                        <%--<table style="width: 100%; text-align: center;">--%>
                            <%--<tbody>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a--%>
                                        <%--style='background: url("../../r/cms/www/default/img/icons/bszn.png") no-repeat left; margin-left: 12px;'--%>
                                        <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank"><h2--%>
                                        <%--class="bmlinkk-h1"--%>
                                        <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--办事指南</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="yu3"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                            <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank">--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线预约</h2></a></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a id="sha3"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsbl.png") no-repeat left; color: grey; margin-left: 12px; cursor: default;'>--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线申请</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="noaa3"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/bgxz.png") no-repeat left; color: rgb(35, 172, 57); margin-left: 12px;'--%>
                                                            <%--onclick='donww("8f72c0b516ab4f8c90d2433f745e973e")'--%>
                                                            <%--href="javascript:void(0);"><h2 class="bmlinkk-h1"--%>
                                                                                           <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--表格下载</h2></a>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="bmlink-box-con  fl" style="width: 480px; height: 65px; margin-bottom: 5px;">--%>
                    <%--<div style="height: 65px; display: inline-block;">--%>
                        <%--<table id="jhsyy4"--%>
                               <%--style="width: 230px; height: 65px; display: inline-block; background-color: rgb(223, 241, 232);"--%>
                               <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                            <%--<tbody>--%>
                            <%--<tr text-align:--%>
                            <%--'center'="">--%>
                            <%--<td rowspan="2"><h2--%>
                                    <%--class="bmlink-h1"--%>
                                    <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                                <%--城镇居民养老保险办理</h2></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td></td>--%>
                                <%--<td></td>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                    <%--<div style="width: 245px; height: 65px; display: inline-block;">--%>
                        <%--<table style="width: 100%; text-align: center;">--%>
                            <%--<tbody>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a--%>
                                        <%--style='background: url("../../r/cms/www/default/img/icons/bszn.png") no-repeat left; margin-left: 12px;'--%>
                                        <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank"><h2--%>
                                        <%--class="bmlinkk-h1"--%>
                                        <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--办事指南</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="yu4"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                            <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank">--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线预约</h2></a></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a id="sha4"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsbl.png") no-repeat left; color: grey; margin-left: 12px; cursor: default;'>--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线申请</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="noaa4"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/bgxz.png") no-repeat left; color: grey; margin-left: 12px; cursor: default;'--%>
                                                            <%--href="javascript:void(0);"><h2 class="bmlinkk-h1"--%>
                                                                                           <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--表格下载</h2></a>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="bmlink-box-con  fl" style="width: 480px; height: 65px; margin-bottom: 5px;">--%>
                    <%--<div style="height: 65px; display: inline-block;">--%>
                        <%--<table id="jhsyy5"--%>
                               <%--style="width: 230px; height: 65px; display: inline-block; background-color: rgb(223, 241, 232);"--%>
                               <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                            <%--<tbody>--%>
                            <%--<tr text-align:--%>
                            <%--'center'="">--%>
                            <%--<td rowspan="2"><h2 class="bmlink-h1" style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                                <%--高龄老人补贴变更</h2></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td></td>--%>
                                <%--<td></td>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                    <%--<div style="width: 245px; height: 65px; display: inline-block;">--%>
                        <%--<table style="width: 100%; text-align: center;">--%>
                            <%--<tbody>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a--%>
                                        <%--style='background: url("../../r/cms/www/default/img/icons/bszn.png") no-repeat left; margin-left: 12px;'--%>
                                        <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank"><h2--%>
                                        <%--class="bmlinkk-h1"--%>
                                        <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--办事指南</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="yu5"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                            <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank">--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线预约</h2></a></td>--%>
                            <%--</tr>--%>
                            <%--<tr>--%>
                                <%--<td style="width: 80px;"><a id="sha5"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/wsbl.png") no-repeat left; margin-left: 12px;'--%>
                                                            <%--href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp"target="_blank">--%>
                                    <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                        <%--在线申请</h2></a></td>--%>
                                <%--<td style="width: 80px;"><a id="noaa5"--%>
                                                            <%--style='background: url("../../r/cms/www/default/img/icons/bgxz.png") no-repeat left; color: rgb(35, 172, 57); margin-left: 12px;'--%>
                                                            <%--onclick='donww("6831d818bf95451fbbdf2deba07fcf00")'--%>
                                                            <%--href="javascript:void(0);"><h2 class="bmlinkk-h1"--%>
                                                                                           <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                    <%--表格下载</h2></a>--%>
                            <%--</tr>--%>
                            <%--</tbody>--%>
                        <%--</table>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="aixindiandian left " style="width: 400px;float:left">--%>
            <%--<div class="axdd_content"--%>
                 <%--style="width: 400px;background: url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/timg.jpg);height: 37px;">--%>
                <%--<span>网格活动</span>--%>
                <%--<a href="#" class="right">更多>></a>--%>
            <%--</div>--%>
            <%--<div class="zxym_person"--%>
                 <%--style="float: left;">--%>
                <%--<img style=" width: 410px;height: 413px;"--%>
                     <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/地图.png"/>--%>
            <%--</div>--%>
            <%--&lt;%&ndash;<div style="width:450px;height:400px;border:#ccc solid 1px;font-size:12px" id="map"></div>&ndash;%&gt;--%>
        <%--</div>--%>
    <%--</div>--%>
    <%--&lt;%&ndash;志愿活动模块&ndash;%&gt;--%>
    <%--<div class="zhuxueyuanmeng " style="height:470px;margin-top: 15px;border: 1px solid rgb(220,220,220);">--%>
        <%--<div class="zxym_content"--%>
             <%--style="width: 940px;height: 37px;background: url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/timg.jpg);">--%>
            <%--<span>志愿者服务</span>--%>
            <%--<a href="#" class="right"--%>
               <%--style="    font-size: 12px;line-height: 35px;padding-right: 18px;color: #FFFFFF; float: right;">更多>></a>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;  margin-top: 10px;  width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿1.jpg"/>--%>
            <%--<p>满有爱心服务队</p>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;   margin-top: 10px;    width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿2.jpg"/>--%>
            <%--<p>法律志愿服务队</p>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;    margin-top: 10px;   width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿3.jpg"/>--%>
            <%--<p>爱心先锋服务队</p>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;   margin-top: 20px;    width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿4.jpg"/>--%>
            <%--<p>绿色守望环保志愿服务队</p>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;   margin-top: 20px;    width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿5.jpg"/>--%>
            <%--<p>蒲公英义工志愿服务队</p>--%>
        <%--</div>--%>
        <%--<div class="zxym_person"--%>
             <%--style="float: left;margin-left: 10px;	margin-right: 10px;   margin-top: 20px;    width: 279px; height: 187px;">--%>
            <%--<img style=" width: 279px;height: 187px;"--%>
                 <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/志愿4.jpg"/>--%>
            <%--<p>向日葵义工志愿服务队</p>--%>
        <%--</div>--%>
        <%--<div class="clear"></div>--%>
    <%--</div>--%>
</div>
</body>
</html>
