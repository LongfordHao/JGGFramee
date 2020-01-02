<%--站点地图--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>站点地图</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="${site.description}" />
	<meta name="keywords" content="${site.keywords}" />
	<style type="text/css">
		dl.map{border:1px solid #efefef;border-top:0;margin:10px 8px 8px;}
		dl.map dt{border-top:1px solid #efefef;padding:10px 15px;}
		dl.map dd{margin:10px 30px 20px;}
		dl.map span{border:1px solid #efefef;padding:8px 10px;}
		dl.map span:hover{border:1px solid #bbb;}
		dl.map span a:hover{text-decoration:none;color:#333;}
		#leftMenu{  width:180px;  float:left;  }
		#main {  width: 100%;  }
		.nright {  overflow: auto;  }
		.nright .nrightop {  width: 100%;  }

	</style>
</head>
<body>

<div class="website">
	当前位置：<a href="/">首页</a> > <a href="http://111.61.235.18:61618/zwgk/index.htm" target="_blank">政务公开</a>
</div>
<div class="clear"style="overflow: hidden;clear: both;width: 0px;height: 0px;">
</div>

<div id="main">
	<div id="leftMenu">
		<ul class="ul_list">
			<li onclick="HoverLi('tb_','tbc_',1,1,4);" class="curr" id="tb_11">机构设置</li>
			<li onclick="HoverLi('tb_','tbc_',1,2,4);" class="normaltab" id="tb_12">政策法规</li>
			<li onclick="HoverLi('tb_','tbc_',1,3,4);" class="normaltab" id="tb_13">社区党建</li>
			<li onclick="HoverLi('tb_','tbc_',1,4,4);" class="normaltab" id="tb_14">大事记</li>
		</ul>
	</div>
</div>
<div class="rightContent" style="width:800px;float:right">
	<div class="nrightop">
		<div class="nrightopleft">
			<div class="dis" id="tbc_11" align="cemter">
				<iframe src="../../jgsz/index.htm" width="800px" height="1000px"></iframe>
			</div>
			<div class="undis" id="tbc_12">
				<iframe src="../../zcfg/index.htm" width="800px" height="450px"></iframe>
			</div>
		</div>
	</div>
</div>



	<%--<dl class="map"><c:forEach items="${fnc:getMainNavList(site.id)}" var="tpl">--%>
		<%--<dt>--%>
			<%--<c:choose>--%>
    			<%--<c:when test="${not empty tpl.href}">--%>
	    			<%--<c:choose>--%>
		    			<%--<c:when test="${fn:indexOf(tpl.href, '://') eq -1}"><c:set var="url" value="${ctx}${tpl.href}"/></c:when>--%>
		    			<%--<c:otherwise><c:set var="url" value="${tpl.href}"/></c:otherwise>--%>
		    		<%--</c:choose>--%>
    			<%--</c:when>--%>
    			<%--<c:otherwise><c:set var="url" value="${ctx}/list-${tpl.id}${urlSuffix}"/></c:otherwise>--%>
    		<%--</c:choose>--%>
    		<%--<a href="${url}" target="_blank">${tpl.name}</a>--%>
		<%--<dd>--%>
			<%--<c:forEach items="${fnc:getCategoryList(site.id, tpl.id, -1, '')}" var="category">--%>
				<%--<c:choose>--%>
	    			<%--<c:when test="${not empty tpl.href}">--%>
		    			<%--<c:choose>--%>
			    			<%--<c:when test="${fn:indexOf(tpl.href, '://') eq -1}"><c:set var="url" value="${ctx}${tpl.href}"/></c:when>--%>
			    			<%--<c:otherwise><c:set var="url" value="${tpl.href}"/></c:otherwise>--%>
			    		<%--</c:choose>--%>
	    			<%--</c:when>--%>
	    			<%--<c:otherwise><c:set var="url" value="${ctx}/list-${tpl.id}${urlSuffix}"/></c:otherwise>--%>
	    		<%--</c:choose>--%>
	    		<%--<span><a href="${url}" target="_blank">${tpl.name}</a></span>--%>
			<%--</c:forEach>--%>
		<%--</dd>--%>
	<%--</c:forEach></dl>--%>
</body>
</html>