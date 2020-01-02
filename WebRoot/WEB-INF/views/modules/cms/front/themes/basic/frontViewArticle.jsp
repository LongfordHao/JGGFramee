<%--不知道--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<title>文章具体内容</title>


<body class="path-publicservice">
<a href="#main-content" class="visually-hidden focusable skip-link">
    跳转到主要内容
</a>

<div class="dialog-off-canvas-main-canvas" data-off-canvas-main-canvas>

    <div class="erj_box" >
        <div class="head mg_auto">
            <div class="head_mini ">
                <div class="mini_left mini_font01"><a href="">蓉江新区智慧社区网上服务平台</a> ︱ <a href=""></a></div>
                <div class="mini_right mini_font02"><a href="" target="_blank">个人登录</a>&nbsp;<!--  |  &nbsp;<a href="" target="_blank">单位登录</a> --></div>
            </div>
            <div class="head_flash ">
                <div class="ss">
                    <div class="region region-globalsearch">
                        <div id="block-block-kbmssearch" class="block block-kbms-news block-kbms-publicsearch-block">
                            <div class="main_rights2 mg_auto">
                                <form id="kbms_search_form_ss" role="form"  name="kbms_search_form_ss" action="" method="post"  target="_blank">
                                    <div class="search_ss">
                                        <div class="ss_wid_001_div" ><input class="ss_wid_001 ss_input form-search" placeholder="输入搜索信息" title="请输入您想搜索的关键词。" type="text" name="textfieldss" id="textfieldss"></div>
                                        <div class="ss_wid_002_div"><input class="ss_wid_002 ss_button button js-form-submit form-submit" type='button' name='kbms_search_ss'  id='kbms_search_ss'  onclick="dofullsearch();"/></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="head_nav">
                <div class="region region-topmenu">
                    <nav role="navigation" aria-labelledby="block-zhudaohang-menu" id="block-zhudaohang" class="block block-menu navigation menu--main">
                        <h2 class="visually-hidden" id="block-zhudaohang-menu">主导航</h2>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="../index.html" data-drupal-link-system-path="&lt;front&gt;">首页</a>
                            </li>
                            <li class="nav_02"></li>
                            <li class="menu-item">
                                <a href="../bulletins.html" data-drupal-link-system-path="bulletins">通知公告</a>
                            </li>
                            <li class="nav_02"></li>
                            <li class="menu-item">
                                <a href="../policies.html" data-drupal-link-system-path="publicservice/policies">公共服务</a>
                            </li>
                            <li class="nav_02"></li>
                            <li class="menu-item">
                                <a href="../gr.html" data-drupal-link-system-path="gr">个人办事</a>
                            </li>
                            <li class="nav_02"></li>
                            <li class="menu-item">
                                <a href="../wisdomhrss.html" data-drupal-link-system-path="wisdomhrss">智慧人社</a>
                            </li>
                            <li class="nav_02"></li>
                            <li class="menu-item">
                                <a ></a>
                            </li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="mains mg_auto">
            <div class="main_data2 mg_auto">
                <div class="region region-content">
                    <div id="block-webthemes-content" class="block block-system block-system-main-block">
                        <div class="texttail_iframe_div">
                            <%--<iframe class="texttail" id="texttail"  height="1500" style="overflow:hidden;" name="texttail" src="./index/1.html"  ></iframe>--%>
                                <div class="span10">
                                    <div class="row">
                                        <div class="span10">
                                            <h3 style="color:#555555;font-size:20px;text-align:center;border-bottom:1px solid #ddd;padding-bottom:15px;margin:25px 0;">${article.title}</h3>
                                            <c:if test="${not empty article.description}"><div>摘要：${article.description}</div></c:if>
                                            <div>${article.articleData.content}</div>
                                            <div style="border-top:1px solid #ddd;padding:10px;margin:25px 0;">发布者：${article.user.name} &nbsp; 点击数：${article.hits} &nbsp; 发布时间：<fmt:formatDate value="${article.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/> &nbsp; 更新时间：<fmt:formatDate value="${article.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="span10">
                                            <h5>相关文章</h5>
                                            <ol><c:forEach items="${relationList}" var="relation">
                                                <li style="float:left;width:230px;"><a href="${ctx}/view-${relation[0]}-${relation[1]}${urlSuffix}">${fns:abbr(relation[2],30)}</a></li>
                                            </c:forEach></ol>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom mg_auto">
            <div class="bottom_nav">
                <div class="region region-bottommenu">
                    <nav role="navigation" aria-labelledby="block-zhudaohang-2-menu" id="block-zhudaohang-2" class="block block-menu navigation menu--main">
                        <h2 class="visually-hidden" id="block-zhudaohang-2-menu">主导航</h2>
                        <ul class="menu">
                            <li class="menu-item">
                                <a href="../index.html" data-drupal-link-system-path="&lt;front&gt;">首页</a>
                            </li>
                            <li class="nav_02"></li>
                            <li class="menu-item">
                                <a href="../bulletins.html" data-drupal-link-system-path="bulletins">通知公告</a>
                            </li>
                            <li class="nav_02"></li>
                            <li class="menu-item">
                                <a href="../policies.html" data-drupal-link-system-path="publicservice/policies">公共服务</a>
                            </li>

                            <li class="nav_02"></li>
                            <li class="menu-item">
                                <a href="../gr.html" data-drupal-link-system-path="gr">个人办事</a>
                            </li>
                            <li class="nav_02"></li>
                            <li class="menu-item">
                                <a href="../wisdomhrss.html" data-drupal-link-system-path="wisdomhrss">智慧人社</a>
                            </li>
                            <li class="nav_02"></li>
                        </ul>
                    </nav>
                </div>
            </div>

        </div>
    </div>
    <style>
        .visually-hidden {
            position: absolute !important;
            clip: rect(1px, 1px, 1px, 1px);
            overflow: hidden;
            height: 1px;
            width: 1px;
            word-wrap: normal;
        }

        .visually-hidden.focusable:active,
        .visually-hidden.focusable:focus {
            position: static !important;
            clip: auto;
            overflow: visible;
            height: auto;
            width: auto;
        }

        * {
            margin: 0px;
            padding: 0px;
            font-family: "微软雅黑";
        }

        body {
            font-size: 12px;
            font-family: "微软雅黑";
            color: #333;
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            background-color: #edeeee;
        }

        div, img, ul, ol, li, dl, dt, dd, p {
            border: none;
            padding: 0;
            margin: 0;
        }

        li {
            list-style-type: none;
        }

        h1, h2, h3, h4, h5 {
        }


        .mg_auto {
            margin: 0px auto;
        }



        /*----------头部------------*/
        .head {
            width: 1200px;
        }

        .head_mini {
            width: 100%;
            height: 43px;
        }

        .mini_left {
            float: left;
            margin-left: 35px;
            width: 400px;
            height: 43px;
            line-height: 43px;
        }

        .mini_right {
            float: right;
            margin-right: 35px;
            width: 400px;
            height: 43px;
            line-height: 43px;
        }

        .mini_font01 {
            font-size: 14px;
            color: #6c6c6c;
            font-family: 微软雅黑;
            text-align: left;
        }

        .mini_font01 a {
            color: #6c6c6c;
            text-decoration: none;
        }

        .mini_font01 a:hover {
            color: #0197da;
            text-decoration: none;
        }

        .mini_font02 {
            font-size: 14px;
            color: #6c6c6c;
            font-family: 微软雅黑;
            text-align: right;
        }

        .mini_font02 a {
            color: #6c6c6c;
            text-decoration: none;
        }

        .mini_font02 a:hover {
            color: #0197da;
            text-decoration: none;
        }

        .head_flash {
            width: 100%;
            height: 81px;
            background: url(/images/head_flash_bg.png) left top no-repeat;
            text-align: right;
            padding-top: 48px;
        }

        .ss {
            width: 400px;
            height: 41px;
            float: right;
            margin-right: 37px;
        }

        .ss_wid_001 {
            width: 300px;
            height: 41px;
            float: left;
            background: url(/images/ss_input_bg.jpg) left bottom no-repeat;
        }

        .ss_wid_002 {
            width: 98px;
            height: 41px;
            float: right;
        }

        .ss_input {
            width: 260px;
            height: 41px;
            BACKGROUND-COLOR: transparent;
            padding-left: 40px;
            border: none;
            color: #a6a6a6;
        }

        .ss_button {
            background: url(/images/ss_input_btn.png) left bottom no-repeat;
            border: none;
        }

        .head_nav {
            height: 43px;
            width: 100%;
        }

        .head_nav ul {
            width: 100%;
            height: 43px;
        }

        .head_nav ul li.menu-item {
            float: left;
            width: 192px;
            height: 43px;
            text-align: center;
            font-family: 微软雅黑;
            font-size: 18px;
            color: #0194cb;
        }

        .head_nav ul li.menu-item a {
            display: block;
            width: 192px;
            height: 43px;
            line-height: 43px;
            color: #000000;
            background: url(/images/nav_bg_02.png) left bottom no-repeat;
            text-decoration: none;
        }

        .head_nav ul li.menu-item a:hover {
            display: block;
            width: 192px;
            height: 43px;
            line-height: 43px;
            color: #0194cb;
            background: url(/images/nav_bg_01.png) left bottom no-repeat;
            text-decoration: none;
        }

        .head_nav ul li.menu-item a.is-active {
            float: left;
            width: 192px;
            height: 43px;
            background: url(/images/nav_bg_01.png) left bottom no-repeat;
            text-align: center;
            font-family: 微软雅黑;
            font-size: 18px;
            color: #0194cb;
            line-height: 43px;
            text-decoration: none;
            cursor: pointer;
        }

        .head_nav ul li.menu-item {
            padding-top: 0
        }

        .head_nav ul li.nav_02 {
            float: left;
            width: 3px;
            height: 43px;
            background: url(/images/nav_line.png) left bottom no-repeat;
        }

        /*覆盖面包屑样式*/
        .breadcrumb li:first-child:before {
            content: none !important;
        }

        .breadcrumb li:before {
            content: '-' !important;
        }

        /* 页面整体背景样式 */

        .erj_box {
            background: url(/images/body_top2.png) left top repeat-x;
        }



        /*----------bottom-----------*/
        .bottom {
            width: 1200px;
            height: 145px;
            margin-top: 10px;
            background: url(/images/bottom_bg.png) left top repeat-x;
        }

        .bottom_nav {
            width: 100%;
            height: 45px;
            line-height: 45px;
            font-family: 微软雅黑;
            font-size: 14px;
            color: #ffffff;
            text-align: center;
        }

        .bottom_nav ul {
            width: 100%;
            height: 45px;
            text-align: center;
        }

        .bottom_nav ul li.menu-item {
            float: left;
            width: 70px;
            height: 45px;
            line-height: 45px;
            font-family: 微软雅黑;
            font-size: 14px;
            color: #ffffff;
            text-align: center;
        }

        .bottom_nav ul li.menu-item a {
            color: #ffffff;
            text-decoration: none;
        }

        .bottom_nav ul li.menu-item a:hover {
            color: #ffffff;
            text-decoration: underline;
        }

        .bottom_nav ul li.menu-item a.is-active {
            color: #ffffff;
            text-decoration: underline;
        }

        .bottom_nav ul li.menu-item {
            padding-top: 0
        }

        .bottom_nav ul li.nav_02 {
            border-right: 1px solid #fff;
            width: 1px;
            height: 15px;
            float: left;
            margin-top: 17px;
        }

        .bottom_nav div.region-bottommenu {
            padding: 0 350px;
        }

        .bottom_nav a {
            color: #ffffff;
            text-decoration: none;
        }

        .bottom_nav a:hover {
            color: #ffffff;
            text-decoration: underline;
        }

        /*----------当前位置--------*/
        .mains {
            width: 1200px;
            height: auto;
            padding-top: 10px;
            background:#fff;
        }

        .main_data2 {
            width: 1181px;
        }

        /*----------公示公告--------*/

        #block-webthemes-content h2 {
            margin-left: 15px;
            border-bottom: 1px solid #787877;
            line-height: 45px;
        }

        .texttail_iframe_div {
            width: 100%;
        }

    </style>


</body>

</html>
