<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/plugins/jquery-modal/jquery.modal.css" type="text/css" media="screen" />
<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
<title>${dessert.name} - 恬</title>
</head>
<body>
	<jsp:include page="/WEB-INF/jsp/common/nav.jsp"></jsp:include>
	<div class="wrapper">
		<div class="m-dessert-detail">
			<div class="img-panel">
				<img class="img-lg" src="<%=request.getContextPath()%>/img/dessert/${dessert.id}.jpg">
			</div>
			<div class="info-panel">
				<h2 class="name">${dessert.name}</h2>
				<input type="hidden" id="js-dessert-id" value="${dessert.id}">
				<span class="price"><i class="fa fa-rmb"></i>${dessert.price}</span>
				<div class="desc">${dessert.desc}</div>
				<div class="separator"></div>
				<div class="options">
					<span class="tip"><i class="fa fa-calendar"></i>所有商品需提前<span class="highlight">1-7</span>天预订</span>
					<div class="option"><label>日期：</label>
						<input id="js-date" type="date" required min="${minDate}" max="${maxDate}" value="${minDate}">
					</div>
					<div class="option"><label>店面：</label>
						<select id="js-store-selector">
							<c:forEach items="${stores}" var="store">
							<option value="${store.id}" 
								<c:if test="${storeId == store.id}">
									<c:out value=" selected"></c:out>
								</c:if>
							>${store.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="option"><label>数量：</label>
						<div class="number-picker js-number-picker" id="1">
							<input type="button" class="minus" value="-">
							<input type="text" class="value js-dessert-value" id="js-dessert-value" id="1" value="0" max="${quantity}">
							<input type="button" class="plus" value="+">
						</div>
						<span class="tip">（该店当日剩余库存：<span id="js-quantity">${quantity}</span>）</span>
					</div>
				</div>
				<div class="btn btn-submit" id="js-add-dessert">加入购物车</div>
			</div>
		</div>
	</div>
	<div class="modal common-modal cart-modal" id="add-modal" style="display:none">
		<div class="modal-content">
			甜品已加入购物车!
		</div>
		<div class="modal-ops">
			<a class="btn" href="<%= request.getContextPath()%>/desserts">再看看其他的~</a>
			<a class="btn" href="<%= request.getContextPath()%>/cart">结账！</a>
		</div>
	</div>
	<script src="<%=request.getContextPath() %>/plugins/jquery-modal/jquery.modal.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="<%=request.getContextPath() %>/js/dessert_detail.js"></script>
</body>
</html>