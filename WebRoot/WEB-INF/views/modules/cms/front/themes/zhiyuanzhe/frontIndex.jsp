<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<head>
    <%--<meta name="decorator" content="cms_default_${site.theme}"/>--%>
    <meta name="description" content=" ${site.description}"/>
    <meta name="keywords" content=" ${site.keywords}"/>
    <title>深海湾</title>
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/bootstrap/2.3.1/chengcss/reset.css"/>
    <script type="text/javascript" src="${ctxStatic}/bootstrap/2.3.1/chengjs/jquery-1.8.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/bootstrap/2.3.1/chengcss/flexslider.css">
    <script type="text/javascript" src="${ctxStatic}/bootstrap/2.3.1/chengjs/jquery.flexslider.js"></script>
    <script type="text/javascript" src="${ctxStatic}/bootstrap/2.3.1/chengjs/main.js"></script>
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/bootstrap/2.3.1/chengcss/thems.css">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/bootstrap/2.3.1/chengcss/responsive.css">
    <script language="javascript">
        $(window).load(function() {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });
    </script>
</head>

<body>
<!--头部-->
<div class="header">
    <div class="head clearfix">
        <div class="logo"><a href=""><img src="${ctxStatic}/bootstrap/2.3.1/chengimg/志愿服务平台.jpg" alt="深海湾"/></a></div>
        <div class="head_r">
            <div class="bb">
                <a href="">电脑版</a>
                <a href="">微信版</a>
            </div>
            <div class="tel">4009978555</div>
            <div class="search">
                <input name="" type="text" class="text" placeholder="ppp">
                <input name="" type="submit" class="btn" value="">
            </div>
        </div>
    </div>
    <div class="space_hx">&nbsp;</div>
    <div class="nav_m">
        <div class="n_icon">&nbsp;</div>
        <ul class="nav clearfix">
            <li class="now"><a href="index.html">志愿者首页</a></li>
            <li><a href="${ctxStatic}/bootstrap/2.3.1/news.jsp">志愿活动</a></li>
            <li><a href="${ctxStatic}/bootstrap/2.3.1/news.jsp">志愿组织</a></li>
            <li><a href="${ctxStatic}/bootstrap/2.3.1/xm.jsp">交流分享</a></li>
            <li><a href="${ctxStatic}/bootstrap/2.3.1/news.jsp">爱心募集</a></li>
            <li><a href="${ctxStatic}/bootstrap/2.3.1/contact.jsp">了解我们</a></li>
        </ul>
    </div>
</div>
<!--头部-->
<div class="space_hx">&nbsp;</div>
<!--幻灯片-->
<div class="banner">
    <div class="slider">
        <div class="flexslider">
            <ul class="slides">
                <li>
                    <img style="height: 230px;width: 1000px" src="${ctxStatic}/bootstrap/2.3.1/img/志愿1.jpg" alt="" />
                </li>
                <li>
                    <img style="height: 230px;width: 1000px" src="${ctxStatic}/bootstrap/2.3.1/img/志愿2.jpg" alt="" />
                </li>
                <li>
                    <img style="height: 230px;width: 1000px" src="${ctxStatic}/bootstrap/2.3.1/img/志愿3.jpg" alt="" />
                </li>
            </ul>
        </div>
    </div>
</div>
<!--幻灯片-->
<div class="gd_news">
    <div class="t_news">
        <ul class="news_li">
            <li><a href="" target="_blank">爱心牵手协会周年庆</a></li>
            <li><a href="" target="_blank">爱心端午节</a></li>
            <li><a href="" target="_blank">南街居委会捐衣物献爱心活动</a></li>
            <li><a href="" target="_blank">南街潭口镇开展居民间剪纸志愿者服务活动</a></li>
            <li><a href="" target="_blank">关爱老人贴心服务活动</a></li>
        </ul>
        <ul class="swap"></ul>
    </div>
</div>
<div class="space_hx">&nbsp;</div>
<div class="scd clearfix">
    <div class="scd_l">
        <div class="title"><span>志愿管理</span></div>
        <div class="scd_lm">
            <ul class="s_nav s_nav_a">
                <li class="now">
                    <div class="li_m">
                        <a href=""><span>志愿组织</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href="alfx.jsp"><span>志愿项目</span></a>
                    </div>
                </li>
                <li>
                    <div class="li_m">
                        <a href=""><span>志愿文化</span></a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="scd_r">
        <div class="title">
            <span>志愿快播</span>
            <div class="pst">
                当前位置：<a href="">首页</a>><a href="">志愿快播</a>>
            </div>
        </div>
        <div class="scd_m">
            <ul class="px_l">
                <li>
                    <a href="news_d.jsp">
                        <p>20年，把青春奉献给支教</p>
                        <span>2019-08-15</span>
                    </a>
                </li>
                <li>
                    <a href="news_d.jsp">
                        <p>全国西部计划工作视频调度会召开</p>
                        <span>2019-08-15</span>
                    </a>
                </li>
                <li>
                    <a href="news_d.jsp">
                        <p>山西省委书记骆惠宁调研青运会准备工作</p>
                        <span>2019-08-15</span>
                    </a>
                </li>
                <li>
                    <a href="news_d.jsp">
                        <p>这些香港青年，用脚丈量祖国大地</p>
                        <span>2019-08-15</span>
                    </a>
                </li>
                <li>
                    <a href="news_d.jsp">
                        <p>“一支永不撤走的青年医疗队”</p>
                        <span>2019-08-15</span>
                    </a>
                </li>
            </ul>
            <div class="space_hx">&nbsp;</div>
        </div>
    </div>
</div>

<div class="i_box clearfix">
    <div class="i_bl">
        <div class="box_h"><span>志愿报名</span></div>
        <div class="box_m">
            <dl class="clearfix">
                <dt><img src="${ctxStatic}/bootstrap/2.3.1/chengimg/icon2.png" alt=""/></dt>
                <dd>
                    <b>志愿报名</b>
                    <p>2623093250</p>
                </dd>
            </dl>
            <p>南街居委会<em>"1"</em></p>
            <p>潭口街道办<em>"2"</em></p>
            <p>北街居委会<em>"3"</em></p>
            <p>谭东街道办<em>"4"</em></p>
            <p>北街社区<em>"5"</em></p>
            <p>谭东街道办<em>"6"</em></p>
        </div>
    </div>
    <div class="i_br">
        <div class="box_h">
            <span>微志愿</span>
            <a href=""><em>+</em> 更多</a>
        </div>
        <div class="box_m">
            <ul class="ul_a clearfix">
            <li><a href=""><img src="${ctxStatic}/bootstrap/2.3.1/chengimg/pic1.jpg" alt=""/><span>志愿观察</span></a></li>
            <li><a href=""><img src="${ctxStatic}/bootstrap/2.3.1/chengimg/pic2.jpg" alt=""/><span>志愿新闻</span></a></li>
            <li><a href=""><img src="${ctxStatic}/bootstrap/2.3.1/chengimg/pic3.jpg" alt=""/><span>志愿评论</span></a></li>
        </ul>
            <div class="space_hx">&nbsp;</div>
            <ul class="ul_b clearfix">
                <li><a href=""><img src="${ctxStatic}/bootstrap/2.3.1/img/志愿4.jpg" alt=""/></a></li>
                <li><a href=""><img src="${ctxStatic}/bootstrap/2.3.1/img/志愿5.jpg" alt=""/></a></li>
                <li><a href=""><img src="${ctxStatic}/bootstrap/2.3.1/img/志愿6.jpg" alt=""/></a></li>
                <li><a href=""><img src="${ctxStatic}/bootstrap/2.3.1/img/志愿7.jpg" alt=""/></a></li>
            </ul>
        </div>
    </div>
</div>
<div class="space_hx">&nbsp;</div>
<div class="f_bg">
    <div class="foot">
        <div class="f_nav">
            <a href="">首页</a>
            <a href="">公司概况</a>
            <a href="">培训信息</a>
            <a href="">工程项目</a>
            <a href="">技术设备</a>
            <a href="">招贤纳士</a>
            <a href="">联系我们</a>
        </div>
        <p>版权所有：深圳深海湾投资管理有限公司</p>
        <p>粤ICP备11069485号-1 © 2000-2015 Nationz. All Rights Reserved.</p>
    </div>
</div>
</body>
</html>
