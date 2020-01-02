<%--原先是留言板页面，被注释了，现在是生活服务页面。--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>留言板</title>
    <meta name="decorator" content="cms_default_${site.theme}"/>
    <meta name="description" content="JGGFrame ${site.description}"/>
    <meta name="keywords" content="JGGFrame ${site.keywords}"/>
    <link href="${ctxStatic}/jquery-validation/1.11.1/jquery.validate.min.css" type="text/css" rel="stylesheet"/>
    <script src="${ctxStatic}/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
    <script src="${ctxStatic}/jquery-validation/1.11.1/jquery.validate.method.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            <c:if test="${not empty message}">alert("${message}");
            </c:if>
            $("#inputForm").validate({
                rules: {
                    validateCode: {remote: "${pageContext.request.contextPath}/servlet/validateCodeServlet"}
                },
                messages: {
                    content: {required: "请填写留言内容"},
                    validateCode: {remote: "验证码不正确"}
                },
                errorContainer: "#messageBox",
                errorPlacement: function (error, element) {
                    if (element.is(":checkbox") || element.is(":radio") || element.parent().is(".input-append")) {
                        error.appendTo(element.parent().parent());
                    } else {
                        error.insertAfter(element);
                    }
                }
            });
            $("#main_nav li").each(function () {
                $(this).toggleClass("active", $(this).text().indexOf('公共留言') >= 0);
            });
        });
        function page(n, s) {
            location = "${ctx}/guestbook?pageNo=" + n + "&pageSize=" + s;
            ;
        }

    </script>
    <style type="text/css">
        form.search {
            margin: 12px 20px 5px;
        }

        .page {
            margin: 20px;
        }

        form.search input.txt {
            padding: 3px;
            font-size: 16px;
            width: 300px;
            margin: 5px;
        }

        form.search select.txt {
            padding: 3px;
            font-size: 16px;
            width: 308px;
            margin: 5px;
        }

        form.search input.txt.date {
            width: 133px;
        }

        form.search .sel {
            margin-bottom: 8px;
            padding: 0 0 10px 5px;
            border-bottom: 1px solid #efefef;
            font-size: 14px;
        }

        form.search .act {
            font-weight: bold;
        }

        form.search .btn {
            padding: 3px 18px;
            *padding: 1px 0 0;
            font-size: 16px;
        }

        dl.search {
            line-height: 25px;
            border-bottom: 1px solid #efefef;
            margin: 10px 20px 20px;
        }

        dl.search dt {
            border-top: 1px solid #efefef;
            padding: 8px 5px 0px;
            font-size: 16px;
        }

        dl.search dt a.title {
            color: #0000cc;
            text-decoration: underline;
        }

        dl.search dd {
            margin: 0 5px 10px;
            font-size: 14px;
            color: #555
        }

        dl.search dd span, dl.search dd a {
            font-size: 12px;
            color: #008000;
        }

        dl.search .highlight {
            color: #DF0037;
        }

        dl.search dd span.highlight {
            color: #DF0037;
            font-size: 14px;
        }

        dl.search dd span.info span.highlight {
            color: #DF0037;
            font-size: 13px;
        }

        .title3 {
            padding: 5px 10px;
            background: #f4f4f4;
            font: 16px 微软雅黑, 宋体;
            color: #bd0052;
        }

        .title3-more {
            margin: 0 10px;
            color: #6e7e97;
        }

        .title3-more:hover {
            color: #ff0000;
        }

        .bmlink {
            margin: 15px 0 0 -1.33333%;
        }

        .bmlink-box {
            margin-left: 1.33333%;
            width: 32%;
            background: #f6f7f8;
        }

        .bmlink-box-pix {
            display: block;
            width: 40%;
            height: 195px;
            overflow: hidden;
        }

        .bmlink-box-pix h1 {
            display: block;
            height: 60px;
            line-height: 60px;
            text-align: center;
            color: #fff;
            font-size: 1.2em;
        }

        .bmlink-box-pix img {
            display: block;
            margin: 20px auto 0 auto;
            width: 90%;
        }

        .bmlink-box-con {
            width: 56%;
            padding: 2%;
        }

        .bmlink-box-con h2 {
            display: block;
            margin: 10px 10px 10px 5px;
        }

        .bmlink-box-con p {
        }

        .bmlink-box-con p a {
            float: left;
            display: block;
            margin: 0 10px 5px 0;
            padding: 0 10px;
            height: 25px;
            line-height: 25px;
            font-size: .85em;
            text-decoration: none;
            background: #fff;
            border: 20px;
            -moz-border-radius: 20px;
            -webkit-border-radius: 20px;
            border: 1px solid #ddd;
        }

        .bmlink-box-con p a:hover {
            color: #1eb9e0;
        }

        .bmlink-bg1 {
            background: #fdb92b;
        }

        .bmlink-bg1 img {
        }

        .bmlink-bg2 {
            background: #1eb9e0;
        }

        .bmlink-bg2 img {
            width: 82%;
        }

        .bmlink-bg3 {
            background: #1ea4e0;
        }

        .bmlink-bg3 img {
            width: 57%;
        }

        .bmlink-bg4 {
            background: #26c9a1;
        }

        .bmlink-bg4 img {
            width: 61%;
        }

        .bmlink-bg5 {
            background: #f0b07f;
        }

        .bmlink-bg5 img {
        }

        .bmlink-bg6 {
            background: #f25c4d;
        }

        .bmlink-bg6 img {
            width: 80%;
        }

        .bmlink-bg7 {
            background: #fc8e5d;
        }

        .bmlink-bg7 img {
            margin: 30px auto 0 auto;
            width: 80%;
        }

        .bmlink-bg8 {
            background: #02c668;
        }

        .bmlink-bg8 img {
            width: 76%;
        }

        .bmlink-bg9 {
            background: #fd982b;
        }

        .bmlink-bg9 img {
            width: 65%;
        }

        .bmlink-h1 {
            border-left: 3px solid #1eb9e0;
            padding: 0 10px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .bmlink-h2 {
            border-left: 3px solid #fdb92b;
            padding: 0 10px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .bmlink-h3 {
            border-left: 3px solid #1ea4e0;
            padding: 0 10px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .bmlink-h4 {
            border-left: 3px solid #26c9a1;
            padding: 0 10px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .bmlink-h5 {
            border-left: 3px solid #f0b07f;
            padding: 0 10px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .bmlink-h6 {
            border-left: 3px solid #f25c4d;
            padding: 0 10px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .bmlink-h7 {
            border-left: 3px solid #fc8e5d;
            padding: 0 10px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .bmlink-h8 {
            border-left: 3px solid #02c668;
            padding: 0 10px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .bmlink-h9 {
            border-left: 3px solid #fd982b;
            padding: 0 10px;
            font-weight: bold;
            font-size: 1.1em;
        }

        .fl {
            float: left;
            display: inline;
        }

    </style>
</head>
<body>
<div class="website">
    当前位置：<a href="/">首页</a> > <a href="http://111.61.235.18:61618/zwgk/index.htm" target="_blank">生活服务</a>
</div>
<div class="w1000  mt10 box-border-b">
    <div class="clearfix">
        <div>
            <div class="box1 clearfix pt10 pb10 pr10 ">
                <div id="dvRoll_Img_Top" class="focusBox fl" style="height: auto; display: block;"></div>
            </div>
            <div class="title3 box-border-t box-border-b  clearfix">
                <label class="fl">近日天气</label>
            </div>
            <div class="weather" style="height: 80px">
                <iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&amp;id=32" width="650"
                        frameborder="0" marginwidth="10" marginheight="0" scrolling="no"
                        style="margin-left:20px"></iframe>
            </div>
        </div>
    </div>
    <div>
        <div class="title3  box-border-t box-border-b  clearfix">
            <label class="fl">民生热线</label>
        </div>
        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li>火警：119</li>
            <li>匪警：110</li>
            <li>中医院急救：999</li>
        </ul>
        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li>县医院急救：120</li>
            <li>交通事故：122</li>
            <li>自来水抢修： 8951265</li>
        </ul>
        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li>百川燃气： 966126</li>
            <li>环保局： 8824975</li>
            <li>气象服务： 12121</li>
        </ul>
        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li>财险客服：95518</li>
            <li>城管热线：8852725</li>
            <li>供电客服： 95598</li>
        </ul>
        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li>物价投诉：12358</li>
            <li>消费投诉：12315</li>
            <li>热力抢修：8822264</li>
        </ul>

        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li>路灯大队：8852725</li>
            <li>有线电视抢修：8835926</li>
            <li>市政管理所：8822049</li>
        </ul>
        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li>信访手机专线：15731659596</li>
            <li>信访固话专线：8822723</li>

        </ul>
        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li>北辰街道办公室：0316-8857979</li>
            <li>永安里社区居委会：0316-8839210</li>
            <li>羊市街社区居委会：0316-8362646</li>
        </ul>
        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li>荣昌街社区居委会：0316-8821560</li>
            <li>和平路社区居委会：0316-8820265</li>
            <li>华安北路社区居委会：0316-8362151</li>
        </ul>
        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li>康安北路社区居委会：0316-8366113</li>
        </ul>
        <ul class="bmrx clearfix" style="width: 33.3%;padding: 5px 5px;font-size: 13px;color: #777;float:left">
            <li style="width:100%">大厂为民服务网：http://www.dcwrmfw.com/</li>
        </ul>
    </div>
    <!-- 民生热线 end  -->

    <div class="clear"></div>
    <div>
        <div class="box1 clearfix pt10 pb10 pr10 ">
            <div id="dvRoll_Img_Top" class="focusBox fl" style="height: auto; display: block;"></div>
        </div>
        <div class="title3 box-border-t box-border-b  clearfix">
            <label class="fl">便民服务网站</label>
        </div>
        <div>
            <div class="bmlink clearfix">
                <div class="bmlink-box mb15 fl">
                    <div class="bmlink-box-pix bmlink-bg1 fl">
                        <h1>票务购买</h1>
                        <img src="../../r/cms/www/default/img/index/dingpiao.png" alt="" style="margin-top: 0px;">
                    </div>
                    <div class="bmlink-box-con  fl">
                        <h2 class="bmlink-h1">票务购买</h2>
                        <p><a href="http://www.12306.cn/mormhweb/" target="_blank">中国铁路服务</a><a
                                href="http://www.airchina.com.cn" target="_blank">中国航空</a><a href="https://www.ch.com/"
                                                                                             target="_blank">春秋航空</a><a
                                href="https://www.qunar.com" target="_blank">去哪网</a><a href="http://www.ctrip.com"
                                                                                       target="_blank">携程网</a><a
                                href="http://www.tuniu.com" target="_blank">途牛网</a><a href=" http://www.lvmama.com"
                                                                                      target="_blank">驴妈妈网</a></p>
                    </div>
                </div>
                <div class="bmlink-box mb15 fl">
                    <div class="bmlink-box-pix bmlink-bg2 fl">
                        <h1>违章查询</h1>
                        <img src="../../r/cms/www/default/img/index/weizhangchaxun.png" alt="" style="margin-top: 0px;">
                    </div>
                    <div class="bmlink-box-con  fl">
                        <h2 class="bmlink-h2">违章查询</h2>
                        <p><a href="http://www.weizhang8.cn" target="_blank">违章服务网</a><a
                                href="http://022.weizhangwang.com" target="_blank">天津违章查询</a><a
                                href="http://www.tjits.cn" target="_blank">天津智能交通网</a></p>
                    </div>
                </div>
                <div class="bmlink-box mb15 fl">
                    <div class="bmlink-box-pix bmlink-bg3 fl">
                        <h1>家政服务</h1>
                        <img src="../../r/cms/www/default/img/index/jiazhengfuwu.png" alt="">
                    </div>
                    <div class="bmlink-box-con  fl">
                        <h2 class="bmlink-h3">家政服务</h2>
                        <p><a href="http://www.51baomu.cn" target="_blank">无忧保姆</a><a href="http://www.sdclean.com"
                                                                                      target="_blank">三鼎家政集团</a><a
                                href="http://huaihua034093.11467.com" target="_blank">天天家政服务中心</a><a
                                href="http://www.010bdybaby.com" target="_blank">国际家政公司</a></p>
                    </div>
                </div>
                <div class="bmlink-box mb15 fl">
                    <div class="bmlink-box-pix bmlink-bg4 fl">
                        <h1>医疗卫生</h1>
                        <img src="../../r/cms/www/default/img/index/yiliaoweisheng.png" alt="">
                    </div>
                    <div class="bmlink-box-con  fl">
                        <h2 class="bmlink-h4">医疗卫生</h2>
                        <p>
                            <a href="http://www.eztcn.com/Home/Index/index/cityid/2.html" target="_blank">医指通</a>
                            <a href="https://yi.baidu.com/pc/hospital/listpage?zt=pcdyyy&amp;key=%E5%A4%A9%E6%B4%A5"
                               target="_blank">百度医生（天津）</a></p>
                    </div>
                </div>
                <div class="bmlink-box mb15 fl">
                    <div class="bmlink-box-pix bmlink-bg5 fl">
                        <h1>法律援助</h1>
                        <img src="../../r/cms/www/default/img/index/falvyuanzhu.png" alt="">
                    </div>
                    <div class="bmlink-box-con  fl">
                        <h2 class="bmlink-h5">法律援助</h2>
                        <p>
                            <a href="http://www.12331.org.cn" target="_blank">食药品投诉举报</a>
                            <a href="http://www.12369.gov.cn" target="_blank">环保局监督</a><a href="http://www.315.gov.cn"
                                                                                          target="_blank">
                            中国消费者权益保护网 </a>
                            <a href="http://www.12389.gov.cn" target="_blank">网络违法犯罪举报网站 </a>
                        </p>
                    </div>
                </div>
                <div class="bmlink-box mb15 fl">
                    <div class="bmlink-box-pix bmlink-bg6 fl">
                        <h1>政务服务</h1>
                        <img src="../../r/cms/www/default/img/index/zhengwufuwu.png" alt="">
                    </div>
                    <div class="bmlink-box-con  fl">
                        <h2 class="bmlink-h6">政务服务</h2>
                        <p><a href="http://www.gov.cn/" target="_blank">中国政府网</a><a href="http://www.gjxfj.gov.cn/"
                                                                                    target="_blank">国家信访局</a><a
                                href="http://www.ccdi.gov.cn" target="_blank">中共中央纪律检查委员会</a><a
                                href="http://www.zfgjj.cn" target="_blank">天津住房公积金</a></p>
                    </div>
                </div>
                <div class="bmlink-box mb15 fl">
                    <div class="bmlink-box-pix bmlink-bg7 fl">
                        <h1>社会保障</h1>
                        <img src="../../r/cms/www/default/img/index/shehuibaohang.png" alt="">
                    </div>
                    <div class="bmlink-box-con  fl">
                        <h2 class="bmlink-h7">社会保障</h2>
                        <p><a href="http://www.mohrss.gov.cn" target="_blank">中华人民共和国人力资源和社会保障部</a><a
                                href="http://www.cnss.cn/shbzw/" target="_blank">中国社会保障网</a><a
                                href="http://www.zgshbz.com.cn/" target="_blank">中国社会保障杂志</a><a
                                href="http://www.12333sb.com/hao.html" target="_blank">12333社保查询网</a></p>
                    </div>
                </div>
                <div class="bmlink-box mb15 fl">
                    <div class="bmlink-box-pix bmlink-bg8 fl">
                        <h1>生活缴费</h1>
                        <img src="../../r/cms/www/default/img/index/shenghuojiaofei.png" alt="">
                    </div>
                    <div class="bmlink-box-con  fl">
                        <h2 class="bmlink-h8">生活缴费类</h2>
                        <p>
                            <a href="http://www.tjgsw.cn/Pages/HomePage.aspx" target="_blank">大厂天然气缴费</a>
                            <!--  <a href="http://www.tj.sgcc.com.cn" target="_blank">天津电力</a>-->
                            <a href="http://www.chinaunicom.com.cn" target="_blank">中国联通</a>
                            <a href="http://www.10086.cn/tj/index_220_220.html?" target="_blank">中国移动</a>
                            <a href="http://www.189.cn" target="_blank">中国电信</a>
                        </p>
                    </div>
                </div>
                <div class="bmlink-box mb15 fl">
                    <div class="bmlink-box-pix bmlink-bg9 fl">
                        <h1>生活服务</h1>
                        <img src="../../r/cms/www/default/img/index/shenghuofeuwu.png" alt="">
                    </div>
                    <div class="bmlink-box-con  fl">
                        <h2 class="bmlink-h9">生活服务</h2>
                        <p><a href="http://tj.58.com/" target="_blank">58同城</a><a href="http://tj.ganji.com"
                                                                                  target="_blank">赶集网</a><a
                                href="http://tj.lianjia.com" target="_blank">链家</a><a href="http://tj.meituan.com/"
                                                                                      target="_blank">美团</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="clear-10"></div>
    <div class="footer">

    </div>
    <div class="footBg" style="color: rgb(128, 128, 128); font-size: 12px; line-height: 23px; width:320px;">
    </div>
</div>

<%--<div style="padding:0 0 20px;">--%>
<%--<h4>公共留言</h4>--%>
<%--<ul>--%>
<%--<c:forEach items="${page.list}" var="guestbook">--%>
<%--<li>--%>
<%--<h5>姓名: ${guestbook.name} &nbsp;时间：<fmt:formatDate value="${guestbook.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></h5>--%>
<%--<div>内容：${guestbook.content}</div>--%>
<%--<h6>回复人：${guestbook.reUser.name} 时间：<fmt:formatDate value="${guestbook.reDate}" pattern="yyyy-MM-dd HH:mm:ss"/></h6>--%>
<%--<div>回复内容：${guestbook.reContent}</div>--%>
<%--</li>--%>
<%--</c:forEach>--%>
<%--<c:if test="${fn:length(page.list) eq 0}">--%>
<%--<li>暂时还没有人留言！</li>--%>
<%--</c:if>--%>
<%--</ul>--%>
<%--<div class="pagination">${page}</div>--%>
<%--<h4>我要留言</h4>--%>
<%--<form:form id="inputForm" action="${ctx}/guestbook" method="post" class="form-horizontal">--%>
<%--<div class="control-group">--%>
<%--<label class="control-label">名称:</label>--%>
<%--<div class="controls">--%>
<%--<input type="text" name="name" maxlength="11" class="required" style="width:300px;"/>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="control-group">--%>
<%--<label class="control-label">邮箱:</label>--%>
<%--<div class="controls">--%>
<%--<input type="text" name="email" maxlength="50" class="required email" style="width:300px;"/>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="control-group">--%>
<%--<label class="control-label">电话:</label>--%>
<%--<div class="controls">--%>
<%--<input type="text" name="phone" maxlength="50" class="required phone" style="width:300px;"/>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="control-group">--%>
<%--<label class="control-label">单位:</label>--%>
<%--<div class="controls">--%>
<%--<input type="text" name="workunit" maxlength="50" class="required" style="width:300px;"/>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="control-group">--%>
<%--<label class="control-label">留言分类:</label>--%>
<%--<div class="controls">--%>
<%--<select name="type" class="txt required" style="width:100px;">--%>
<%--<option value="">请选择</option>--%>
<%--<c:forEach items="${fns:getDictList('cms_guestbook')}" var="type">--%>
<%--<option value="${type.value}">${type.label}</option>--%>
<%--</c:forEach>--%>
<%--</select>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="control-group">--%>
<%--<label class="control-label">留言内容:</label>--%>
<%--<div class="controls">--%>
<%--<textarea name="content" rows="4" maxlength="200" class="required" style="width:400px;"></textarea>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="control-group">--%>
<%--<label class="control-label">验证码:</label>--%>
<%--<div class="controls">--%>
<%--<sys:validateCode name="validateCode" />--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-actions">--%>
<%--<input class="btn" type="submit" value="提 交"/>&nbsp;--%>
<%--</div>--%>
<%--<div id="messageBox" class="alert alert-error" style="display:none">输入有误，请先更正。</div>--%>
<%--</form:form>--%>
<%--</div>--%>
</body>
</html>