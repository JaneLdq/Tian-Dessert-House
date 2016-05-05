<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% int num = 0; %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
<title>${store.name} - 恬</title>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/common/nav.jsp"></jsp:include>
	<div class="wrapper">
		<div class="m-store-detail-panel">
			<div class="store-card">
				<a class="store-img" href="<%=request.getContextPath()%>/store/1"><img src="<%=request.getContextPath() %>/img/store/1.jpg" alt="store"></a>
				<div class="store-desc">
					<a class="store-name" href="<%=request.getContextPath()%>/store/${store.id}">${store.name }</a>
					<p><i class="fa fa-phone"></i>${store.tel }</p>
					<p><i class="fa fa-map-marker"></i>${store.address}</p>
				</div>
			</div>
		</div>
		<div class="m-store-dessert-panel">
		<c:forEach items="${desserts}" var="d">
			<% 	if(num % 4 == 0){
					out.print("<div class='row'>");
				}
			%>
			<div class="col col-sm dessert">
				<a href="<%=request.getContextPath()%>/dessert/d/${d.id}/s/${store.id}">
				<img class="dessert-img" src="<%=request.getContextPath() %>/img/dessert/${d.id}.jpg" alt="dessert"></a>
				<div class="dessert-desc">
					<a href="<%=request.getContextPath()%>/dessert/d/${d.id}/s/${store.id}" class="dessert-name">${d.name}</a>
					<span class="dessert-price"><i class="fa fa-rmb"></i>${d.price }</span>
				</div>
			</div>
			<%
				if(num % 4 == 3){
					out.print("</div>");
				}
				++num;
			%>
		</c:forEach>
		</div>
	</div>
</body>
</html>