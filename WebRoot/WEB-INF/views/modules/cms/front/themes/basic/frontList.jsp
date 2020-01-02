<%--以前是点击子栏目加载文章的页面，现在是事办办理页面--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <%--物业管理/办事指南--%>
    <title>${category.name}</title>
    <meta name="decorator" content="cms_default_${site.theme}"/>
    <meta name="description" content="${category.description}"/>
    <meta name="keywords" content="${category.keywords}"/>
    <link rel="stylesheet" href="${ctxStatic}/bootstrap/2.3.1/css/yewu.css"/>
</head>
<body>
<div class="span2" style="width: 940px;">
    <ul class="breadcrumb" style="  background-color: #FFFFFF;">
        <cms:frontCurrentPosition category="${category}"/>
    </ul>
</div>


<div class="bmlink clearfix" style="width: 1000px; margin-left: 0px;">
    <%--<div class="bmlink-box mb15 fl" style="width: 480px; margin-left: 0px;float:left">--%>
        <%--<img style="width: 480px; height: 135px;"--%>
             <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/社会保障卡.JPEG">--%>
    <%--</div>--%>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <div class="wrap overflow pt16">
        <p></p>
    </div>
    <!-- 社会类证明 -->
    <%--<div class="bmlink-box mb15 fl" style="width: 480px; margin-left: 30px;float:left">--%>
        <%--<img style="width: 480px; height: 135px;"--%>
             <%--src="${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/二胎.jpg">--%>
    <%--</div>--%>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <!-- 计划生育类证明 -->
    <%--<div class="bmlink-box mb15 fl" id="society"--%>
         <%--style="width: 480px; margin-left: 0px; float: left; ">--%>
        <%--<div class="bmlink-box-con  fl" style="width: 480px; height: 65px; margin-bottom: 5px;">--%>
            <%--<div style="height: 65px; display: inline-block;">--%>
                <%--<table id="jhsyy0"--%>
                       <%--style="width: 230px; height: 65px; display: inline-block;"--%>
                       <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                    <%--<tbody>--%>
                    <%--<tr text-align:--%>
                    <%--'center'="">--%>
                    <%--<td rowspan="2"><a href="../../bszn1juzhu/index.htm?id=1387f3ec354047c6ad4c85adb2dcf98f"><h2--%>
                            <%--class="bmlink-h1"--%>
                            <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                        <%--高龄老人生活补贴申报</h2></a></td>--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu0"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
                            <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                <%--在线预约</h2></a></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td style="width: 80px;"><a id="sha0"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsbl.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
                       <%--style="width: 230px; height: 65px; display: inline-block;  "--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu1"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
                       <%--style="width: 230px; height: 65px; display: inline-block;  "--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu2"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
                       <%--style="width: 230px; height: 65px; display: inline-block;  "--%>
                       <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                    <%--<tbody>--%>
                    <%--<tr text-align:--%>
                    <%--'center'="">--%>
                    <%--<td rowspan="2"><h2--%>
                            <%--class="bmlink-h1"--%>
                            <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                        <%--残疾人证办理</h2></td>--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu3"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
                       <%--style="width: 230px; height: 65px; display: inline-block;  "--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu4"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
                       <%--style="width: 230px; height: 65px; display: inline-block;  "--%>
                       <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                    <%--<tbody>--%>
                    <%--<tr text-align:--%>
                    <%--'center'="">--%>
                    <%--<td rowspan="2"><h2--%>
                            <%--class="bmlink-h1"--%>
                            <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu5"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
                            <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                <%--在线预约</h2></a></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td style="width: 80px;"><a id="sha5"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsbl.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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

    <%--<div class="bmlink-box mb15 fl" id="society1"--%>
         <%--style="width: 480px; margin-left: 30px; float: left; ">--%>
        <%--<div class="bmlink-box-con  fl" style="width: 480px; height: 65px; margin-bottom: 5px;">--%>
            <%--<div style="height: 65px; display: inline-block;">--%>
                <%--<table id="jhsyy0"--%>
                       <%--style="width: 230px; height: 65px; display: inline-block;"--%>
                       <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                    <%--<tbody>--%>
                    <%--<tr text-align:--%>
                    <%--'center'="">--%>
                    <%--<td rowspan="2"><h2--%>
                            <%--class="bmlink-h1"--%>
                            <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                        <%--办理流动人口婚育证明</h2></td>--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu0"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
                            <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                <%--在线预约</h2></a></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td style="width: 80px;"><a id="sha0"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsbl.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
                       <%--style="width: 230px; height: 65px; display: inline-block;  "--%>
                       <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                    <%--<tbody>--%>
                    <%--<tr text-align:--%>
                    <%--'center'="">--%>
                    <%--<td rowspan="2"><h2--%>
                            <%--class="bmlink-h1"--%>
                            <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                        <%--免费计生药具办理</h2></td>--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu1"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
                       <%--style="width: 230px; height: 65px; display: inline-block;  "--%>
                       <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                    <%--<tbody>--%>
                    <%--<tr text-align:--%>
                    <%--'center'="">--%>
                    <%--<td rowspan="2"><h2--%>
                            <%--class="bmlink-h1"--%>
                            <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                        <%--办理第一个子女生育登记卡</h2></td>--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu2"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
                       <%--style="width: 230px; height: 65px; display: inline-block;  "--%>
                       <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                    <%--<tbody>--%>
                    <%--<tr text-align:--%>
                    <%--'center'="">--%>
                    <%--<td rowspan="2"><h2--%>
                            <%--class="bmlink-h1"--%>
                            <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                        <%--办理独生子女父母光荣证</h2></td>--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu3"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
                       <%--style="width: 230px; height: 65px; display: inline-block;  "--%>
                       <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                    <%--<tbody>--%>
                    <%--<tr text-align:--%>
                    <%--'center'="">--%>
                    <%--<td rowspan="2"><h2--%>
                            <%--class="bmlink-h1"--%>
                            <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                        <%--孕育状况证明办理</h2></td>--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu4"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
                       <%--style="width: 230px; height: 65px; display: inline-block;  "--%>
                       <%--onmouseover="addcs(this)" onmouseout="removecj(this)">--%>
                    <%--<tbody>--%>
                    <%--<tr text-align:--%>
                    <%--'center'="">--%>
                    <%--<td rowspan="2"><a href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                            <%--class="bmlink-h1"--%>
                            <%--style="font-size: 20px;margin-top: 26px; margin-left: 10px; display: inline-block;">--%>
                        <%--计划生育政策</h2></a></td>--%>
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
                                <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank""><h2--%>
                                <%--class="bmlinkk-h1"--%>
                                <%--style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                            <%--办事指南</h2></a></td>--%>
                        <%--<td style="width: 80px;"><a id="yu5"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsyy.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
                            <%--<h2 class="bmlinkk-h1" style="font-size: 12px;margin-left: 20px; display: inline-block;">--%>
                                <%--在线预约</h2></a></td>--%>
                    <%--</tr>--%>
                    <%--<tr>--%>
                        <%--<td style="width: 80px;"><a id="sha5"--%>
                                                    <%--style='background: url("../../r/cms/www/default/img/icons/wsbl.png") no-repeat left; margin-left: 12px;'--%>
                                                    <%--href=" ${pageContext.request.contextPath}/static/bootstrap/2.3.1/yewubanli.jsp "target="_blank"">--%>
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
<%--<div class="wrap overflow pt16">--%>
    <%--<p></p>--%>
<%--</div>--%>
<%--&lt;%&ndash;受理&ndash;%&gt;--%>
<%--<div class="zxzx_list">--%>
    <%--<div class="tt">--%>
        <%--<h1 style="width:20%;font-size: 20px;float:left;margin-left: 25px;">受理部门</h1>--%>
        <%--<h2 style="width:20%;font-size: 20px;float:left;">受理事项</h2>--%>
        <%--<h4 style="width:20%;font-size: 20px;float:left;padding: 0px;border-left: 0px solid #ffffff; background-color: #ffffff;">申报日期</h4>--%>
        <%--<h5 style="width:20%;font-size: 20px;float:left;padding: 0px;border-left: 0px solid #ffffff; background-color: #ffffff;">完成时间</h5>--%>
        <%--<h6 style="width:12%;font-size: 20px;float:left;margin: 10px 0 5px;">办件状态</h6>--%>
    <%--</div>--%>

    <%--<div id="element_id">--%>
        <%--<ul id="info" style="height: 200px;">--%>
            <%--<li width="100%">--%>
                <%--<h11 class="span3" style="margin-left: 0px;width: 20%; float: left; text-align: center; overflow: hidden;  padding: 0 1px;font-size: 20px;">社会保险事业管理</h11>--%>
                <%--<h22 class="span2">--%>
                    <%--<a title="关于沈家初基本养老保险费的业务">关于沈家初基本养老保险费的业务</a>--%>
                <%--</h22>--%>
                <%--<h44 class="span3 ">2018-12-28</h44>--%>
                <%--<h55 class="span3">2018-12-28</h55>--%>
                <%--<h66 class="span4 blue">办结</h66>--%>
            <%--</li>--%>
            <%--<li width="100%">--%>
                <%--<h11 class="span3"  style="margin-left: 0px;width: 20%; float: left; text-align: center; overflow: hidden;  padding: 0 1px;font-size: 20px;">卫生和计划生育委员会</h11>--%>
                <%--<h22 class="span2">--%>
                    <%--<a title="关于邱立琼公共场所卫生许可证复核的申请">关于邱立琼公共场所卫生许可证复核的申请</a>--%>
                <%--</h22>--%>
                <%--<h44 class="span3">2018-12-28</h44>--%>
                <%--<h55 class="span3">2018-12-28</h55>--%>
                <%--<h66 class="span4 blue">办结</h66>--%>
            <%--</li>--%>
            <%--<li width="100%">--%>
                <%--<h14 class="span3"  style="margin-left: 0px;width: 20%; float: left; text-align: center; overflow: hidden;  padding: 0 1px;font-size: 20px;">市场监督管理</h14>--%>
                <%--<h22 class="span2">--%>
                    <%--<a title="关于曾令友个体工商户变更登记的申请">关于曾令友个体工商户变更登记的申请</a>--%>
                <%--</h22>--%>
                <%--<h44 class="span3">2018-12-28</h44>--%>
                <%--<h55 class="span3">--</h55>--%>
                <%--<h66 class="span4 blue">受理</h66>--%>
            <%--</li>--%>
            <%--<li width="100%">--%>
                <%--<h11 class="span3" style="margin-left: 0px;width: 20%;  float: left; text-align: center; overflow: hidden;  padding: 0 1px;font-size: 20px;">市场监督管理</h11>--%>
                <%--<h22 class="span2">--%>
                    <%--<a title="关于方向个体工商户注销登记的申请">关于方向个体工商户注销登记的申请</a>--%>
                <%--</h22>--%>
                <%--<h44 class="span3">2018-12-28</h44>--%>
                <%--<h55 class="span3">2018-12-28</h55>--%>
                <%--<h66 class="span4 blue">办结</h66>--%>
            <%--</li>--%>
            <%--<li width="100%">--%>
                <%--<h14 class="span3"  style="margin-left: 0px;width: 20%; float: left; text-align: center; overflow: hidden;  padding: 0 1px;font-size: 20px;">市场监督管理</h14>--%>
                <%--<h22 class="span2">--%>
                    <%--<a title="关于曾令友个体工商户变更登记的申请">关于曾令友个体工商户变更登记的申请</a>--%>
                <%--</h22>--%>
                <%--<h44 class="span3">2018-12-28</h44>--%>
                <%--<h55 class="span3">--</h55>--%>
                <%--<h66 class="span4 blue">受理</h66>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</div>--%>


    <%--&lt;%&ndash;<table id="jhsyy0" style="width: 230px; height: 65px; display: inline-block;  " onmouseover="addcs(this)" onmouseout="removecj(this)"><tbody><tr text-align:'center'=""><td rowspan="2"><a href="../../bszn1juzhu/index.htm?id=1387f3ec354047c6ad4c85adb2dcf98f"><h2 class="bmlink-h1" style="margin-top: 26px; margin-left: 10px; display: inline-block;">高龄老人生活补贴申报</h2></a></td></tr><tr><td></td><td></td></tr></tbody></table>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div class="row">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div class="span2">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<h4>栏目列表</h4>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<ol>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<cms:frontCategoryList categoryList="${categoryList}"/>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</ol>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div class="span12">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<h4>${category.name}</h4>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<c:if test="${category.module eq 'article'}">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<ul><c:forEach items="${page.list}" var="article">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,96)}</a></li>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</c:forEach></ul>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div class="pagination">${page}</div>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<script type="text/javascript">&ndash;%&gt;--%>
    <%--&lt;%&ndash;function page(n,s){&ndash;%&gt;--%>
    <%--&lt;%&ndash;location="${ctx}/list-${category.id}${urlSuffix}?pageNo="+n+"&pageSize="+s;&ndash;%&gt;--%>
    <%--&lt;%&ndash;}&ndash;%&gt;--%>
    <%--&lt;%&ndash;</script>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<c:if test="${category.module eq 'link'}">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<ul><c:forEach items="${page.list}" var="link">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<li><a href="${link.href}" target="_blank" style="color:${link.color}"><c:out value="${link.title}" /></a></li>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</c:forEach></ul>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
</body>
</html>
