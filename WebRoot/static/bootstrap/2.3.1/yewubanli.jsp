<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人服务</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/2.3.1/css//base.css">
</head>
<body>
<!--头部-->
<header class="headStyle">
    <div class="left headLeft">
        <img src="img/logo.png"/>
    </div>
    <div class="left headCenter">
        <span class="headSpan">省级</span><i class="headi"></i><a href="javascript:void(0)" id="local">区域切换</a><i
            class="headi i_pos"></i><a href="javascript:void(0)" id="part">部门信息</a>
    </div>
    <div class="right headRight">
        <ul>
            <li><i class="i_reg"></i><a href="#">登录</a></li>
            <li><i class="i_reg01 i_reg"></i><a href="#">注册</a></li>
            <li><i></i><a href="#">App</a></li>
            <li><i></i><a href="#">公众微信号</a></li>
        </ul>
    </div>

</header>
<!--切换站点弹出框-->
<div class="pubBox ">
    <div class="pubDiv left"><span class="left">省级</span>
        <ul class="left">
            <li>省级</li>
        </ul>
    </div>
    <div class="pubDiv left"><span class="left">市级</span>
        <ul class="left">
            <li>成都市</li>
            <li>成都市</li>
            <li>成都市</li>
            <li>成都市</li>
            <li>成都市</li>
            <li>成都市</li>
        </ul>
    </div>
    <div class="pubDiv left"><span class="left">县，市，区</span>
        <ul class="left">
            <li>双流县</li>
            <li>双流县</li>
            <li>双流县</li>
            <li>双流县</li>
            <li>双流县</li>
        </ul>
    </div>
    <div class="pubDiv left noBorder"><span class="left">乡镇街道</span>
        <ul class="left">
            <li>双流县</li>
            <li>双流县</li>
            <li>双流县</li>
            <li>双流县</li>
            <li>双流县</li>
        </ul>
    </div>
</div>
<!--部门信息弹出窗口-->
<div class="pubBoxPart">
    <h5 class="hStyle">部门信息</h5>
    <ul>
        <li>组织管理部</li>
        <li>组织管理部</li>
        <li>组织管理部</li>
        <li>组织管理部</li>
        <li>组织管理部</li>
        <li>组织管理部</li>
        <li>组织管理部</li>
        <li>组织管理部</li>
        <li>组织管理部</li>
        <li>组织管理部</li>
    </ul>
</div>
<!--导航栏-->

<!--内容部分每个界面不同的地方-->
<div class="left con">
    <!--所在位置-->
    <div class="perSerTab"><span>当前位置：</span><a href="javascript:void(0)">【事项预约】</a></div>
    <!--内容部分-->
    <div class="perSerCon left">
        <div class="perSevchage left borderNo ">
            <p class="caseTailTop">城镇居民基本医疗保险办理</p>
        </div>
        <div class="left persolSerCon borderNo">
            <table border="1" class="askTable">
                <tr>
                    <td class="tdLable">预约事项名称</td>
                    <td><input type="text" class="caseInput"/></td>
                    <td class="tdLable">预约人</td>
                    <td><input type="text" class="caseInput"/></td>
                </tr>
                <tr>
                    <td class="tdLable">预约人身份证号</td>
                    <td><input type="text" class="caseInput"/></td>
                    <td class="tdLable">手机号码</td>
                    <td><input type="text" class="caseInput"/></td>
                </tr>
                <tr>
                    <td class="tdLable">所属社区</td>
                    <td><input type="text" class="caseInput"/></td>
                    <td class="tdLable">预约日期</td>
                    <td><input type="text" class="caseInput"/></td>
                </tr>
                <tr>
                    <td class="tdLable">预约时间</td>
                    <td><input type="text" class="caseInput"/></td>
                    <td class="tdLable">备注</td>
                    <td><input type="text" class="caseInput"/></td>
                </tr>
                <tr>
                    <td class="tdLable">事件类型</td>
                    <td><input type="text" class="caseInput"/></td>
                    <td class="tdLable">办件类型</td>
                    <td><input type="text" class="caseInput"/></td>
                </tr>
                <tr>
                    <td class="tdLable">备注</td>
                    <td colspan="3"><label>选项</label><input type="radio" class="caseRadio"/><label>选项</label><input
                            type="radio" class="caseRadio"/></td>
                </tr>
            </table>

        </div>
        <p class="casefoot">
            <button class="saveBut">提交</button>
            <button class="closeBut">取消</button>
        </p>

    </div>


</div>
<!--底部-->
<footer class="left footer">

    <div class="left footerLogo"><img src="img/red.png"></div>
    <div class="left footText"><p><span>主管单位：xxxxx人民政府办公厅 </span><span>承办单位:xxxx政府政务服务和公共资源交易服务中心</span></p>
        <p><span>技术支持：中国xxxx公司 </span><span>联系我们：028-xxxxxx</span></p>
        <p><span>网站标识码：xxxxxxxx </span><span>x ICP 备1xxxxx号-3xxx公网安备 xxxxxxxx号</span></p>
    </div>
    <div class="left"><img src="img/jiucuo.png"></div>

</footer>
<script src="${ctxStatic}/bootstrap/2.3.1/js/jquery-2.2.0.min.js"></script>
<script src="${ctxStatic}/bootstrap/2.3.1/js/base.js"></script>
</body>
</html>
