<%--政务公开/信息公开栏目- -栏目列表--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <%--政务公开/信息公开栏目--%>
    <title>${category.name}</title>
    <meta name="decorator" content="cms_default_${site.theme}"/>
    <meta name="description" content="${category.description}"/>
    <meta name="keywords" content="${category.keywords}"/>
        <style type="text/css">
            .span5 ul li{
                list-style: url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/list-style2.jpg);
                margin-left: 5px;
            }
            .ul_list li{
                width:100px;;
                height:40px;
                font-size:20px;
                text-align:center;
                vertical-align: middle;
                margin-top:10px;
                line-height:38px;
                cursor: pointer;
                clear:both;
                list-style: outside none none;
                color: #1b1b1b;
                font-family: "微软雅黑";
                font-weight: normal
                /*   color:#333333; */
            }
            .curr  {
                background-color:#B0E2FF;
                color:#A2B5CD;
            }
            .ul_list li:hover{
                background-color:#B0E2FF;
                color:#A2B5CD;
            }
        </style>
</head>
<body>
<div class="span10" style="width: 940px;">
    <ul class="breadcrumb" style="  background-color: #FFFFFF;">
        <cms:frontCurrentPosition category="${category}"/>
    </ul>
</div>
<div class="row"style="width:940px;">
    <div id="main"style=" width:200px;float:left ">
            <div id="leftMenu"style=" width:200px;">
                <ul class="ul_list">
                        <ol>
                        <cms:frontCategoryList categoryList="${categoryList}"/>
                        </ol>
                </ul>
            </div>
        </div>
    <div class="span10"  style="width:700px;float:left " >
        <c:set var="index" value="1"/>
        <c:forEach items="${categoryList}" var="tpl">
            <c:if test="${tpl.inList eq '1' && tpl.module ne ''}">
                <c:set var="index" value="${index+1}"/>
                ${index % 2 eq 0 ? '<div class="row">':''}
                <div class="span5">
                    <h4>
                        <small><a href="${ctx}/list-${tpl.id}${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>
                            ${tpl.name}</h4>
                    <c:if test="${tpl.module eq 'article'}">
                        <ul><c:forEach items="${fnc:getArticleList(site.id, tpl.id, 5, '')}" var="article">
                            <li style="list-style: none;list-style: url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/list-style2.jpg);margin-left: 5px;"><span class="pull-right"><fmt:formatDate value="${article.updateDate}"
                                                                         pattern="yyyy.MM.dd"/></span><a
                                    href="${ctx}/view-${article.category.id}-${article.id}${urlSuffix}"
                                    style="color:${article.color}">${fns:abbr(article.title,40)}</a></listyle>
                            </li>
                        </c:forEach></ul>
                    </c:if>
                    <c:if test="${tpl.module eq 'link'}">
                        <ul><c:forEach items="${fnc:getLinkList(site.id, tpl.id, 5, '')}" var="link">
                            <li style="list-style: url(${pageContext.request.contextPath}/static/bootstrap/2.3.1/img/list-style2.jpg);margin-left: 5px;"><span class="pull-right"><fmt:formatDate value="${link.updateDate}"
                                                                         pattern="yyyy.MM.dd"/></span><a target="_blank"
                                                                                                         href="${link.href}"
                                                                                                         style="color:${link.color}">${fns:abbr(link.title,40)}</a>
                            </li>
                        </c:forEach></ul>
                    </c:if>
                </div>
                ${index % 2 ne 0 ? '</div>':''}
            </c:if>
        </c:forEach>
    </div>
</div>
</body>
</html>
